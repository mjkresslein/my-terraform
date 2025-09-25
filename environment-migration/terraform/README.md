# Custom Terraform Modules

## Purpose

The purpose of this folder is to setup custom modules for leveraging the `import {}` block function in Terraform.
The import block in conjunction with an argument (`-generate-config-out`), enables a user to create a HCL file that
can be used to apply identical resources in a new environment. Certain resources being applied will rely on execution
of the adjacent ansible playbook.

## Terraform Import Setup

In order to generate HCL configuration an `import` block *without* a corresponding `resource` block is needed. A
corresponding `resource` block will not generate output in a configuration file because that signals intention to import
the resource in to Terraform state upon the execution of an `apply`.

Below is a template of how to create an `import` block.

```hcl
import {
  to       = aws_resource.resource_name
  id       = "identifier"
}
```

In the following example, the `import` block directs an AWS EC2 instance to be imported identified by the instance ID.

```hcl
import {
  to       = aws_instance.my_instance
  id       = "i-0xxxxxx"
}
```

### Known Limitations

Terraform generates configuration `resource` blocks for any resources that do not already exist in the Terraform module. It requests values for resources using the provider. In doing so it attempts to get values for every possible field in a Terraform resource definition. Therefore, it sometimes results in conflicting configuration arguments; which has already been seen in this module. An example of the error is shown below. For the most part these errors can be ignored when generating the configuration. However, they should be noted or recorded since they will cause conflicts for any later `apply` operation and will need to be resolved or reconciled in order to successfully apply configurations in a new environment.

```txt
│ Error: Conflicting configuration arguments
│
│   with aws_instance.ado_instance_1,
│   on test.tf line 16:
│   (source code not available)
│
│ "ipv6_addresses": conflicts with ipv6_address_count
```

## Creating Terraform Files With Python

As shown above individual import blocks can be created for each individual resource and the IDs can be placed in them in that way. It was opted to use `locals` definition in order to conveniently list items and other identifying attributes. Then using a Python script generate import blocks to be consumed by Terraform. This was an alternative to using a `for_each` field in the Terraform `import` blocks.

> [!NOTE]
> Attempting to create either `local` or `data` object lists in and use a `for_each` inside an `import` block has
> been attempted.
>
> ```hcl
> locals {
>   instances = [
>     {
>       group = "ADO"
>       name  = "lcmp_ado_app1_e"
>       id    = "i-035d65fcd51b28227"
>     },
>     {
>       group = "ADO"
>       name  = "lcmp_ado_app2_e"
>       id    = "i-0cf818d69c929bc3a"
>     }
>   ]
> }
> import {
>   for_each  = local.instances
>   to        = aws_instance.each.value.name
>   id        = each.value.id
> }
> ```
>
> Unfortunately, the `for_each` usage does not seem to be supported when using `import` to generate
> a Terraform configuration file and not having a corresponding `resource` definition.

Instead, a python script was created to hit the AWS API collect resource names and IDs and format them in to `locals` definition. Then, it consumes the Terraform `locals` and creates matching Terraform `import` blocks. 

The script resdies at the root of the `terraform` dircetory and is designed to traverse the subdirectories that are structured for each resource. The structure was designed this way so that individual `.tf` files could later be generated for each resource instead of one very large file with everything. Unfortunately, the `terraform` command does not support include or exclude options. It does have a method of achieving this with nested modules but `import` blocks can only be used in root modules. 

```bash
python make_imports.py

The file "ec2_locals.tf" is being replaced
The file "ec2_imports.tf" is being replaced
The file "db_locals.tf" is being replaced
The file "db_imports.tf" is being replaced
The file "sg_locals.tf" is being replaced
The file "sg_imports.tf" is being replaced
```

## Generating Terraform Configuration

As explained above when a Terraform `import` block does not have a target `resource` block and the `-generate-config-out=` is used in a `terraform plan` execution, a Terraform generated HCL `.tf` file will be created at the path provided in the argument. An example execution in this repository is shown below and the output was written to `./generated-config/sample.tf`.

```bash
terraform plan -generate-config-out=../generated-config/ec2.tf
```

> [!WARNING]
> Before running the Terraform plan some manual review of import blocks may be necessary. Some resources (e.g. EC2s and Security Groups) have identical names. In Terraform resource names need to be unique. This only affects the name of the Terraform resource in HCL not the actual `Name` tag in AWS. This would also serve as a time to delete or comment unwanted resources. 

## Next Steps
