locals {
  dlm_lifecycle_policys = [
    {
      id   = "policy-0d4e0885adcebb398",
      name = "dlm_snapshots"
    },
  ]
}

import {
  to = aws_dlm_lifecycle_policy.dlm_snapshots
  id = "policy-0d4e0885adcebb398"
}

# __generated__ by Terraform
resource "aws_dlm_lifecycle_policy" "dlm_snapshots" {
  description        = "DLM-Snapshots"
  execution_role_arn = "arn:aws:iam::947132430921:role/DLM-Snapshot_Role"
  state              = "DISABLED"
  tags               = {}
  tags_all           = {}
  policy_details {
    policy_type        = "EBS_SNAPSHOT_MANAGEMENT"
    resource_locations = ["CLOUD"]
    resource_types     = ["INSTANCE"]
    target_tags = {
      DLM-Snaps = "True"
    }
    parameters {
      exclude_boot_volume = false
      no_reboot           = false
    }
    schedule {
      copy_tags   = true
      name        = "Default Schedule"
      tags_to_add = {}
      variable_tags = {
        instance-id = "$(instance-id)"
        timestamp   = "$(timestamp)"
      }
      create_rule {
        cron_expression = null
        interval        = 24
        interval_unit   = "HOURS"
        location        = "CLOUD"
        times           = ["03:00"]
      }
      retain_rule {
        interval      = 14
        interval_unit = "DAYS"
      }
    }
  }
}
