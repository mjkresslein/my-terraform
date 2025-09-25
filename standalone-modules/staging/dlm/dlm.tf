# locals {
#   dlm_lifecycle_policys = [
#     {
#       id   = "policy-02917b89e4fd0a5a3",
#       name = "dlm_snapshots"
#     }
#   ]
# }

# import {
#   to = aws_dlm_lifecycle_policy.dlm_snapshots
#   id = "policy-02917b89e4fd0a5a3"
# }

# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform
# resource "aws_dlm_lifecycle_policy" "dlm_snapshots" {
#   description        = "DLM-Snapshots"
#   execution_role_arn = "arn:aws-us-gov:iam::482556331625:role/DLM-Snapshot_Role"
#   state              = "ENABLED"
#   tags = {
#     Name = "DLM-Snapshots"
#   }
#   tags_all = {
#     Name = "DLM-Snapshots"
#   }
#   policy_details {
#     policy_type        = "EBS_SNAPSHOT_MANAGEMENT"
#     resource_locations = ["CLOUD"]
#     resource_types     = ["INSTANCE"]
#     target_tags = {
#       DLM-Snaps = "True"
#     }
#     parameters {
#       exclude_boot_volume = false
#       no_reboot           = false
#     }
#     schedule {
#       copy_tags   = true
#       name        = "Daily"
#       tags_to_add = {}
#       variable_tags = {
#         instance-id = "$(instance-id)"
#         timestamp   = "$(timestamp)"
#       }
#       create_rule {
#         cron_expression = null
#         interval        = 24
#         interval_unit   = "HOURS"
#         location        = "CLOUD"
#         times           = ["03:00"]
#       }
#       retain_rule {
#         # count         = 0
#         interval      = 14
#         interval_unit = "DAYS"
#       }
#     }
#   }
# }
