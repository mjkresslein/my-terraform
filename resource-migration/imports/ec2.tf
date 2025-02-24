# resource "aws_instance" "ado_instance" {
#   for_each      = data.aws_instance.ado_instance
#   instance_type = each.value.instance_type
#   ami           = each.value.ami
# }

# resource "aws_instance" "bu_instance" {
#   for_each      = data.aws_instance.bu_instance
#   instance_type = each.value.instance_type
#   ami           = each.value.ami
# }

# resource "aws_instance" "cr_instance" {
#   for_each      = data.aws_instance.cr_instance
#   instance_type = each.value.instance_type
#   ami           = each.value.ami
# }

# resource "aws_instance" "sp_instance" {
#   instance_type = data.aws_instance.sp_instance.instance_type
#   ami           = data.aws_instance.sp_instance.ami
# }

# resource "aws_instance" "eml_instance" {
#   instance_type = data.aws_instance.eml_instance.instance_type
#   ami           = data.aws_instance.eml_instance.ami
# }

# resource "aws_instance" "db_instance" {
#   instance_type = data.aws_instance.db_instance.instance_type
#   ami           = data.aws_instance.db_instance.ami
# }

# resource "aws_instance" "gitlab_instance" {
#   instance_type = data.aws_instance.gitlab_instance.instance_type
#   ami           = data.aws_instance.gitlab_instance.ami
# }

# resource "aws_instance" "ds_instance" {
#   instance_type = data.aws_instance.ds_instance.instance_type
#   ami           = data.aws_instance.ds_instance.ami
# }
