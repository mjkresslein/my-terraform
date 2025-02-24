data "aws_instance" "ado_instance" {
  for_each    = { for instance in local.ado_instances : instance.id => instance }
  instance_id = each.value.id
}

data "aws_instance" "bu_instance" {
  for_each    = { for instance in local.bu_instances : instance.id => instance }
  instance_id = each.value.id
}

data "aws_instance" "cr_instance" {
  for_each    = { for instance in local.cr_instances : instance.id => instance }
  instance_id = each.value.id
}

data "aws_instance" "sp_instance" {
  instance_id = "i-"
}

data "aws_instance" "eml_instance" {
  instance_id = "i-"
}

data "aws_instance" "db_instance" {
  instance_id = "i-"
}

data "aws_instance" "gitlab_instance" {
  instance_id = "i-"
}

data "aws_instance" "ds_instance" {
  instance_id = "i-"
}
