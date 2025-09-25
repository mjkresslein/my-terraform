# Ansible Playbooks

## Purpose

The first use case for Ansible playbooks in this folder is to create "backups" of AWS resources where necessary in order to maximize data and configuration retention. The initial examples are using the AWS collection in Ansible to create AMIs from existing EC2 instances as well as RDS snapshots from existing RDS instances. 

> [!NOTE]
> The current playbook does not include the single RDS cluster (not a single instance), but has the ability to as needed. 

In future additions to this folder playbooks would likely be created in order to restore on configure retained data and objects in a new environment. 

## Playbook Setup

The following describes how the *first* playbook was created and arranged in this directory but is not the only method to setup Ansible automation or definitions. A playbook approach as opposed to tasks in a file accompanied with a CLI run was taken in the mindset of future growth for this undertaking. 

### Creating a Playbook file

First a playbook file was created in order to title and encapsulate the overall task. In the below playbook file the `name:` field titles the playbook. The `hosts:` field identifies where it is run. In this case since the AWS collection will be used it is run on localhost. The AWS collection leverages use of the current AWS CLI session. Therefore, it is necessary that the user of the playbook is logged in to the target account and has it set as their current AWS_PROFILE. In the case of the DEV account the simplest way to configure and manage this is through [AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html#sso-configure-profile-token-auto-sso). The `vars_files:` field directs the playbook which variables files to make accessible globally and not just at the playbook level. This will allow them to be referenced in roles and tasks. Finally, the `roles:` field lists which roles to include in the playbook. 

```yaml title="dev-backup.yml"
---
- name: Backup Dev Environment Resources
  hosts: localhost
  vars_files:
    - group_vars/all.yml
  roles:
    - backup
```

### Creating a Role

Roles in a playbook are arranged in a `roles/` directory adjacent to the playbook. A directory with the matching name of each role should be within that directory. Therefore the `roles/` directory will multiple folders (one for each role). Inside each roles directory can be other directories to store `files/`, `vars/`, `defaults/`, etc. The most important are `tasks/`, which define all the tasks performed by that role. The `main.yml` file is the starting point for all tasks in a role. It essentially states what sets of tasks files to execute for the role. These can also be conditioned. 

In our example the `main.yml` in the "backup" role is below.

```yaml title="main.yml"
- name: Include EC2 Backup Tasks
  ansible.builtin.include_tasks: backup_ec2s.yml

- name: Include RDS Backup Tasks
  ansible.builtin.include_tasks: backup_rds.yml
```

This role executes the two listed tasks files.

### Creating tasks

Using the tasks file for backing up EC2 instances multiple tasks are defined and meant to be executed.

    1. Creating AMIs from instances.
    2. Collecting/printing the AMI IDs of the ones created.
    3. Sharing AMIs across Organizations/Accounts (currently commented).
    4. Deleting the AMIs.

These tasks were include in a `block` structure so that if any tasks failed the playbook could move on. Tasks can fail for any number of reasons and sometimes without good explanation. The default behavior of Ansible when a failure is incurred is to stop the run. In this case, subsequent roles and tasks will not be reached. Therefore, by placing a set of tasks in a `block` with a `rescue` allows for error handling and notification but still proceeds to other tasks. 

Below is the tasks definition for EC2 backups.

```yaml title="backup_ec2s.yml"
- name: AMI Creation Error Handling
  block:
    - name: Create AMIs from the DEV EC2s
      amazon.aws.ec2_ami:
        instance_id: "{{ item }}"
        name: "kresslein-ansible-{{ item }}"
        no_reboot: true
        tags:
          Name: "kresslein-ansible-{{ item }}"
          CreatedBy: "kresslein-ansible"
        wait: true
        wait_timeout: 0
      with_items: "{{ instance_ids }}"
      register: ami_results

    - name: Gather AMI IDs
      ansible.builtin.debug:
        msg: "Created AMI ID: {{ item.image_id }}"
      with_items: "{{ ami_results.results }}"

    # - name: Share AMIs Across Orgs
    #   amazon.aws.ec2_ami:
    #     image_id: "{{ item.image_id }}"
    #     state: present
    #     launch_permissions:
    #       org_arns: ['']
    #       org_unit_arns: ['']
    #   with_items: {{ ami_results.results }}

    - name: Cleanup AMis and Snapshots
      amazon.aws.ec2_ami:
        image_id: "{{ item.image_id }}"
        delete_snapshot: true
        state: absent
        wait: true
      with_items: "{{ ami_results.results }}"

  rescue:
    - name: ERROR MESSAGE
      ansible.builtin.debug:
        msg: "No AMI IDs were gathered. Either they were not created or something went wrong."
```

> [!NOTE]
> The option in the snapshot creation `no_reboot: true` specifies that if the instance is running it will not be stopped or rebooted when creating an AMI. The default behavior in AWS is to reboot the instance as this results in optimal and most reliable snapshot and AMI creation. However, to avoid unplanned or unnecessary downtime, set this flag. 
> Also, when deleting AMIs be sure to set the `delete_snapshot: true` flag to thoroughly cleanup dangling resources.

## Playbook Execution

Below are commands to validate a playbook before running and for executing a playbook with expected outputs. 

To validate a playbook:

```bash
ansible-lint dev-backup.yml

Passed: 0 failure(s), 0 warning(s) on 4 files. Last profile that met the validation criteria was 'production'.
```

To perform a "dry-run":

```bash
ansible-playbook --check dev-backup.yml

PLAY [Backup Dev Environment Resources] ******************************************************************************************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [backup : Include EC2 Backup Tasks] *****************************************************************************************************************************************************************************************************************************************************************************************
included: /home/user/environment-migration/ansible/playbooks/roles/backup/tasks/backup_ec2s.yml for localhost

TASK [backup : Create AMIs from the DEV EC2s] ************************************************************************************************************************************************************************************************************************************************************************************
changed: [localhost] => (item=i-03456a28a1a20600f)
changed: [localhost] => (item=i-08b72f1099ec3893b)
changed: [localhost] => (item=i-04c266aaae79e35e6)
changed: [localhost] => (item=i-0773c885035837daf)
changed: [localhost] => (item=i-03bdfdbc210fb2ded)

TASK [backup : Gather AMI IDs] ***************************************************************************************************************************************************************************************************************************************************************************************************
fatal: [localhost]: FAILED! => {"msg": "The task includes an option with an undefined variable. The error was: 'dict object' has no attribute 'image_id'. 'dict object' has no attribute 'image_id'\n\nThe error appears to be in '/home/user/environment-migration/ansible/playbooks/roles/backup/tasks/backup_ec2s.yml': line 16, column 7, but may\nbe elsewhere in the file depending on the exact syntax problem.\n\nThe offending line appears to be:\n\n\n    - name: Gather AMI IDs\n      ^ here\n"}

TASK [backup : ERROR MESSAGE] ****************************************************************************************************************************************************************************************************************************************************************************************************
ok: [localhost] => {
    "msg": "No AMI IDs were gathered. Either they were not created or something went wrong."
}

TASK [backup : Include RDS Backup Tasks] *****************************************************************************************************************************************************************************************************************************************************************************************
included: /home/user/environment-migration/ansible/playbooks/roles/backup/tasks/backup_rds.yml for localhost

TASK [backup : Create DB instance snapshots] *************************************************************************************************************************************************************************************************************************************************************************************
changed: [localhost] => (item=gitlab-db-ha)
changed: [localhost] => (item=lcmp-rds-bitbucket)

TASK [backup : Gather DB Snapshot Identifiers] ***********************************************************************************************************************************************************************************************************************************************************************************
fatal: [localhost]: FAILED! => {"msg": "The task includes an option with an undefined variable. The error was: 'dict object' has no attribute 'db_snapshot_identifier'. 'dict object' has no attribute 'db_snapshot_identifier'\n\nThe error appears to be in '/home/user/environment-migration/ansible/playbooks/roles/backup/tasks/backup_rds.yml': line 12, column 7, but may\nbe elsewhere in the file depending on the exact syntax problem.\n\nThe offending line appears to be:\n\n\n    - name: Gather DB Snapshot Identifiers\n      ^ here\n"}

TASK [backup : ERROR MESSAGE] ****************************************************************************************************************************************************************************************************************************************************************************************************
ok: [localhost] => {
    "msg": "No snapshot IDs were gathered. Either they were not created or something went wrong."
}

PLAY RECAP ***********************************************************************************************************************************************************************************************************************************************************************************************************************
localhost                  : ok=7    changed=2    unreachable=0    failed=0    skipped=0    rescued=2    ignored=0 
```

> [!NOTE]
> The failed tasks resulting in rescues are expected since AMIs and snapshots were not actually created.

To execute a playbook:

```
ansible-playbook dev-backup.yml
```

For verbose output if debugging is needed:

```
ansible-playbook -vvv dev-backup.yml
```
