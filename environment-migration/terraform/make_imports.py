import hcl2
import os
import json
import boto3
import subprocess
import sys
import re

ec2_client = boto3.client('ec2')

def clean_file(file_name):
    # Remove the file if it exists
    if os.path.exists(file_name):
        print(f'The file "{file_name}" is being replaced')
        os.remove(file_name)
    else:
        print(f'The file "{file_name}" is being created.')

def get_vpcs():
    vpc_list = ec2_client.describe_vpcs()
    vpcs = []
    for vpc in vpc_list['Vpcs']:
        name = None
        if 'Tags' in vpc:
            for tag in vpc['Tags']:
                if tag['Key'] == 'Name':
                    name = tag['Value']
                    break
        vpcs.append({
            'name': name,
            'id': vpc['VpcId']
        })
    formatted_vpcs = form_json(vpcs)
    post_proc_out(formatted_vpcs, 'vpc', 'vpc', True)

def get_subnets():
    subnet_list = ec2_client.describe_subnets()
    subnets = []
    for subnet in subnet_list['Subnets']:
        name = None
        if 'Tags' in subnet:
            for tag in subnet['Tags']:
                if tag['Key'] == 'Name':
                    name = tag['Value']
                    break
        subnets.append({
            'name': name,
            'id': subnet['SubnetId']
        })
    formatted_subnets = form_json(subnets)
    post_proc_out(formatted_subnets, 'subnet', 'subnet', True)

def get_acls():
    acl_list = ec2_client.describe_network_acls()
    acls = []
    for acl in acl_list['NetworkAcls']:
        name = None
        if 'Tags' in acl:
            for tag in acl['Tags']:
                if tag['Key'] == 'Name':
                    name = tag['Value']
                    break
        acls.append({
            'name': name,
            'id': acl['NetworkAclId']
        })
    formatted_vpcs = form_json(acls)
    post_proc_out(formatted_vpcs, 'acl', 'default_network_acl', True)

def get_ec2s():
    ec2_list = ec2_client.describe_instances()
    instances = []
    for reservation in ec2_list['Reservations']:
        for instance in reservation['Instances']:
            name = None
            if 'Tags' in instance:
                for tag in instance['Tags']:
                    if tag['Key'] == 'Name':
                        name = tag['Value']
                        break
            instances.append({
                'name': name,
                'id': instance['InstanceId']
            })
    formatted_ec2s = form_json(instances)
    post_proc_out(formatted_ec2s, 'ec2', 'instance', True)

def get_dbs():
    rds_client = boto3.client('rds')
    rds_list = rds_client.describe_db_instances()
    dbs = []
    for dbinstance in rds_list['DBInstances']:
        dbs.append({
            'name': dbinstance['DBInstanceIdentifier'],
            'id': dbinstance['DBInstanceIdentifier']
        })
    formatted_dbs = form_json(dbs)
    post_proc_out(formatted_dbs, 'db', 'db_instance', True)

def get_sgs():
    sg_list = ec2_client.describe_security_groups()
    sgs = []
    for sg in sg_list['SecurityGroups']:
        sgs.append({
            'name': sg['GroupName'],
            'id': sg['GroupId']
        })
    formatted_sgs = form_json(sgs)
    post_proc_out(formatted_sgs, 'sg', 'security_group', True)

def get_buckets():
    s3_client = boto3.client('s3')
    s3_list = s3_client.list_buckets()
    buckets = []
    for bucket in s3_list['Buckets']:
        buckets.append({
            'name': bucket['Name'],
            'id': bucket['Name']
        })
    formatted_buckets = form_json(buckets)
    post_proc_out(formatted_buckets, 's3', 's3_bucket', True)

def get_route53():
    r53_client = boto3.client('route53')
    
    ## ZONES
    zones_list = r53_client.list_hosted_zones()
    zones = []
    zone_ids = []
    for zone in zones_list['HostedZones']:
        zones.append({
            'name': zone['Name'].rstrip('.'),
            'id': zone['Id'].strip('/hostedzone/')
        })
        zone_ids.append(zone['Id'].strip('/hostedzone/'))
    formatted_zones = form_json(zones)
    post_proc_out(formatted_zones, 'route53_zone', 'route53_zone', False)

    ## RECORDS
    records = []
    for zone_id in zone_ids:
        record_sets = r53_client.list_resource_record_sets(HostedZoneId=zone_id)
        for record in record_sets['ResourceRecordSets']:
            record_name = record['Name'].rstrip(".")
            records.append({
                'name': record_name,
                'id': f"{zone_id}_{record_name}_{record['Type']}"
            })
    formatted_records = form_json(records)
    post_proc_out(formatted_records, 'route53_record', 'route53_record', False)

    run_terraform('route53')

def get_iam():
    iam_client = boto3.client('iam')

    ## USER GROUPS
    group_list = iam_client.list_groups()
    groups = []
    for group in group_list['Groups']:
        groups.append({
            'name': group['GroupName'],
            'id': group['GroupName']
        })
    formatted_groups = form_json(groups)
    post_proc_out(formatted_groups, 'user_groups', 'iam_group', False)
    

    ## USERS
    user_list = iam_client.list_users()
    users = []
    for user in user_list['Users']:
        users.append({
            'name': user['UserName'],
            'id': user['UserName']
        })
    formatted_users = form_json(users)
    post_proc_out(formatted_users, 'users', 'iam_user', False)

    ## ROLES
    prefixes = ['/service-role/', '/aws-reserved/', '/aws-service-role/']
    aws_managed_roles = []
    customer_managed_roles = []
    next_token = None
    while True:
        if next_token:
            all_roles = iam_client.list_roles(Marker=next_token)
        else:
            all_roles = iam_client.list_roles()
        for role in all_roles['Roles']:
            if any(role['Path'].startswith(prefix) for prefix in prefixes):
                aws_managed_roles.append(role['RoleName'])
            else:
                customer_managed_roles.append({
                    'name': role['RoleName'],
                    'id': role['RoleName']
                })
        next_token = all_roles.get('Marker')
        if not next_token:
            break
    formatted_roles = form_json(customer_managed_roles)
    post_proc_out(formatted_roles, 'roles', 'iam_role', False)

    ## INLINE POLICIES and POLICY ATTACHMENTS
    inline_policies = []
    policy_attachments = []
    for customer_role in customer_managed_roles:
        role_name = customer_role['name']
        role_policies = iam_client.list_role_policies(RoleName=role_name)
        for role_policy in role_policies['PolicyNames']:
            inline_policies.append({
                'name': role_policy,
                'id': f"{role_name}:{role_policy}"
            })
        attached_policies = iam_client.list_attached_role_policies(RoleName=role_name)
        for attached_policy in attached_policies['AttachedPolicies']:
            policy_attachments.append({
                'name': attached_policy['PolicyName'],
                'id': f"{role_name}/{attached_policy['PolicyArn']}"
            })
    formatted_inline_policies = form_json(inline_policies)
    formatted_policy_attachments = form_json(policy_attachments)
    post_proc_out(formatted_inline_policies, 'role_policies','iam_role_policy', False)
    post_proc_out(formatted_policy_attachments, 'policy_attachments', 'iam_role_policy_attachment', False)

    ## POLICIES
    customer_managed_policies = []
    next_token = None
    while True:
        if next_token:
            all_policies = iam_client.list_policies(Marker=next_token)
        else:
            all_policies = iam_client.list_policies()
        for policy in all_policies['Policies']:
            if policy['Arn'].startswith('arn:aws:iam::947132430921'):
                customer_managed_policies.append({
                    'name': policy['PolicyName'],
                    'id': policy['Arn']
                })
        next_token = all_policies.get('Marker')
        if not next_token:
            break
    formatted_policies = form_json(customer_managed_policies)
    post_proc_out(formatted_policies, 'policies', 'iam_policy', False)

    ## IDENTITY PROVIDERS
    oidc_list = iam_client.list_open_id_connect_providers()
    oidcs = []
    for oidc in oidc_list['OpenIDConnectProviderList']:
        oidcs.append({
            'name': oidc['Arn'].rsplit('id/')[-1],
            'id': oidc['Arn']
        })
    formatted_oidcs = form_json(oidcs)
    post_proc_out(formatted_oidcs, 'oidc', 'iam_openid_connect_provider', False)

    saml_list = iam_client.list_saml_providers()
    samls = []
    for saml in saml_list['SAMLProviderList']:
        samls.append({
            'name': saml['Arn'].split('saml-provider/')[-1],
            'id': saml['Arn']
        })
    formatted_samls = form_json(samls)
    post_proc_out(formatted_samls, 'saml', 'iam_saml_provider', False)

    run_terraform('iam')

def get_route_tables():
    route_table_list = ec2_client.describe_route_tables()
    route_tables = []
    for route_table in route_table_list['RouteTables']:
        name = 'Unnamed'
        if 'Tags' in route_table:
            for tag in route_table['Tags']:
                if tag['Key'] == 'Name':
                    name = tag['Value']
                    break
        route_tables.append({
            'name': name,
            'id': route_table['RouteTableId']
        })
    formatted_tables = form_json(route_tables)
    post_proc_out(formatted_tables,'route_tables', 'route_table', True)

def get_gateways():
    ## INTERNET GATEWAYS
    igw_list = ec2_client.describe_internet_gateways()
    internet_gateways = []
    for igw in igw_list['InternetGateways']:
        igw_name = 'Unnamed'
        if 'Tags' in igw:
            for tag in igw['Tags']:
                if tag['Key'] == 'Name':
                    igw_name = tag['Value']
                    break
        internet_gateways.append({
            'name': igw_name,
            'id': igw['InternetGatewayId']
        })
    formatted_igws = form_json(internet_gateways)
    post_proc_out(formatted_igws, 'igws', 'internet_gateway', False)

    ## NAT GATEWAYS
    ngw_list = ec2_client.describe_nat_gateways()
    nat_gateways = []
    for ngw in ngw_list['NatGateways']:
        ngw_name = 'Unnamed'
        if 'Tags' in ngw['Tags']:
            for tag in ngw['Tags']:
                if tag['Key'] == 'Name':
                    ngw_name = tag['Value']
                    break
        nat_gateways.append({
            'name': ngw_name,
            'id': ngw['NatGatewayId']
        })
    formatted_ngws = form_json(nat_gateways)
    post_proc_out(formatted_ngws, 'ngws', 'nat_gateway', False)

    run_terraform('gateways')

def get_peering_conns():
    peering_connections_list = ec2_client.describe_vpc_peering_connections()
    connections = []
    for connection in peering_connections_list['VpcPeeringConnections']:
        name = 'Unnnamed'
        if 'Tags' in connection:
            for tag in connection['Tags']:
                if tag['Key'] == 'Name':
                    name = tag['Value']
                    break
        connections.append({
            'name': name,
            'id': connection['VpcPeeringConnectionId']
        })
    formatted_connections = form_json(connections)
    post_proc_out(formatted_connections, 'peering_connections', 'vpc_peering_connection', True)

def get_dlm_policies():
    dlm_client = boto3.client('dlm')
    policy_list = dlm_client.get_lifecycle_policies()
    dlm_policies = []
    for policy in policy_list['Policies']:
        dlm_policies.append({
            'name': policy['Description'],
            'id': policy['PolicyId']
        })
    formatted_dlm_policies = form_json(dlm_policies)
    post_proc_out(formatted_dlm_policies, 'dlm_policies', 'dlm_lifecycle_policy', True)

def form_json(items):
    formatted_json = "[\n" + ",\n".join([
        f"    {{\n"
        f"      \"name\": \"{item['name']}\",\n"
        f"      \"id\": \"{item['id']}\"\n"
        f"    }}" 
        for item in items
    ]) + "\n]"
    return(formatted_json)

def post_proc_out(json_data, abbrv, resource_type, run_t):
    locals_file = f'{abbrv}_locals.tf'
    clean_file(locals_file)
    data = json.loads(json_data)

    formatted_output = [
        {
            "id": item['id'],
            "name": item['name'].replace(" ", "_").replace(".", "_").replace("-", "_").lower()
        } for item in data
    ]

    resource_types = f'{resource_type}s'
    with open(locals_file, 'a') as f:
        f.write(f'locals {{\n  {resource_types} = [\n')
        for item in formatted_output:
            f.write(f'    {{\n'
                f'      id = "{item["id"]}",\n'
                f'      name = "{item["name"]}"\n'
                f'    }},\n'
            )
        f.write('  ]\n}\n')
    
    locals_data = read_locals(locals_file)
    imports_file = f'{abbrv}_imports.tf'
    resource_title = f'aws_{resource_type}'
    generate_imports_file(locals_data, imports_file, resource_types, resource_title)
    if run_t:
        run_terraform(abbrv)

def read_locals(locals_file):
    with open(locals_file, 'r') as file:
        return hcl2.load(file)

def generate_imports_file(locals_data, imports_path, resource_type, resource_title):
    clean_file(imports_path)
    
    resources = locals_data['locals'][0][resource_type]
    seen_names = set()
    for resource in resources:
        original_name = resource['name']
        name = original_name
        count = 1
        while name in seen_names:
            name = f"{original_name}_{count}"
            count += 1    
        seen_names.add(name)
        command = f"import {{\n  to = {resource_title}.{name}\n  id = \"{resource['id']}\"\n}}\n"
        with open(imports_path, 'a') as f:
            f.write(command)

def run_terraform(abbrv):
    clean_file(f'../generated-config/{abbrv}.tf')
    fmt_command = ['terraform', 'fmt', '-diff']
    subprocess.run(fmt_command)
    init_command = ['terraform', 'init', '-reconfigure']
    subprocess.run(init_command)
    with open('../generated-config/error_msgs.txt', 'a') as f:
        sys.stderr = f
        plan_command = ['terraform', 'plan', f'--generate-config-out=../generated-config/{abbrv}.tf']
        result = subprocess.run(plan_command, stderr=subprocess.PIPE, universal_newlines=True)
        clean_stderr = remove_ansi_escape_codes(result.stderr)
        f.write(clean_stderr)
        print("Terraform errors/warnings\n", file=sys.stderr)

def remove_ansi_escape_codes(text):
    ansi_escape = re.compile(r'\x1B[@-_][0-?]*[ -/]*[@-~]')
    return ansi_escape.sub('', text)

def main():
    clean_file('generated-config/error_msgs.txt')

    tasks = [
        ('iam', get_iam),
        ('vpcs', get_vpcs),
        ('subnets', get_subnets),
        ('ec2', get_ec2s),
        ('rds', get_dbs),
        ('sgs', get_sgs),
        ('s3', get_buckets),
        ('route53', get_route53),
        ('acl', get_acls),
        ('route_tables', get_route_tables),
        ('gateways', get_gateways),
        ('peering_connections', get_peering_conns),
        ('dlm', get_dlm_policies)
    ]

    for dir, func in tasks:
        os.chdir(dir)
        func()
        os.chdir('../')

if __name__ == "__main__":
    main()
