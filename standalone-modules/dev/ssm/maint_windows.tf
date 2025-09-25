import {
  to = aws_ssm_maintenance_window.lcmp_development_patching
  id = "mw-071359ef89afc7322"
}

# __generated__ by Terraform
resource "aws_ssm_maintenance_window" "lcmp_development_patching" {
  allow_unassociated_targets = false
  cutoff                     = 0
  description                = null
  duration                   = 16
  enabled                    = false
  end_date                   = null
  name                       = "LCMP_Development_Patching"
  schedule                   = "rate(30 days)"
  schedule_timezone          = "America/New_York"
  start_date                 = "2023-07-22T12:30:00-04:00"
  tags                       = {}
  tags_all                   = {}
}

import {
  to = aws_ssm_maintenance_window_task.createimage_db
  id = "mw-071359ef89afc7322/0d3dc16a-45e1-4c24-be00-3b3f87eaef23"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/0d3dc16a-45e1-4c24-be00-3b3f87eaef23"
resource "aws_ssm_maintenance_window_task" "createimage_db" {
  cutoff_behavior  = null
  description      = null
  max_concurrency  = "100%"
  max_errors       = "100%"
  name             = "CreateImage_Database"
  priority         = 1
  service_role_arn = "arn:aws:iam::947132430921:role/LCMP_Patching_Role"
  task_arn         = "AWS-CreateImage"
  task_type        = "AUTOMATION"
  window_id        = "mw-071359ef89afc7322"
  targets {
    key    = "WindowTargetIds"
    values = ["313eecb3-82d9-4b21-80a0-5c08313e5e5d"]
  }
  task_invocation_parameters {
    automation_parameters {
      document_version = "$DEFAULT"
      parameter {
        name   = "AutomationAssumeRole"
        values = [""]
      }
      parameter {
        name   = "InstanceId"
        values = ["{{TARGET_ID}}"]
      }
      parameter {
        name   = "NoReboot"
        values = ["false"]
      }
    }
  }
}

import {
  to = aws_ssm_maintenance_window_task.patch_db
  id = "mw-071359ef89afc7322/27e2cda4-ad03-4064-aefd-5bbb4a324fb2"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/27e2cda4-ad03-4064-aefd-5bbb4a324fb2"
resource "aws_ssm_maintenance_window_task" "patch_db" {
  cutoff_behavior  = null
  description      = null
  max_concurrency  = "100%"
  max_errors       = "100%"
  name             = "Patch_Database"
  priority         = 3
  service_role_arn = "arn:aws:iam::947132430921:role/LCMP_Patching_Role"
  task_arn         = "AWS-RunPatchBaseline"
  task_type        = "RUN_COMMAND"
  window_id        = "mw-071359ef89afc7322"
  targets {
    key    = "WindowTargetIds"
    values = ["313eecb3-82d9-4b21-80a0-5c08313e5e5d"]
  }
  task_invocation_parameters {
    run_command_parameters {
      comment              = null
      document_hash        = null
      document_hash_type   = null
      document_version     = "$DEFAULT"
      output_s3_bucket     = "lcmpdevpatchingresults"
      output_s3_key_prefix = "Patching_Database"
      service_role_arn     = null
      timeout_seconds      = 600
      parameter {
        name   = "AssociationId"
        values = [""]
      }
      parameter {
        name   = "BaselineOverride"
        values = [""]
      }
      parameter {
        name   = "InstallOverrideList"
        values = [""]
      }
      parameter {
        name   = "Operation"
        values = ["Install"]
      }
      parameter {
        name   = "RebootOption"
        values = ["RebootIfNeeded"]
      }
      parameter {
        name   = "SnapshotId"
        values = [""]
      }
    }
  }
}


import {
  to = aws_ssm_maintenance_window_task.createimage_non_db
  id = "mw-071359ef89afc7322/3aa8d28b-7c59-49a5-b25d-6a178af771a0"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/3aa8d28b-7c59-49a5-b25d-6a178af771a0"
resource "aws_ssm_maintenance_window_task" "createimage_non_db" {
  cutoff_behavior  = null
  description      = null
  max_concurrency  = "100%"
  max_errors       = "100%"
  name             = "CreateImage_Non_Database"
  priority         = 2
  service_role_arn = "arn:aws:iam::947132430921:role/LCMP_Patching_Role"
  task_arn         = "AWS-CreateImage"
  task_type        = "AUTOMATION"
  window_id        = "mw-071359ef89afc7322"
  targets {
    key    = "WindowTargetIds"
    values = ["094ec39c-45eb-427d-88bc-cabfb0f95470", "11012024-e6ca-4a94-8c68-6261fd851a4a"]
  }
  task_invocation_parameters {
    automation_parameters {
      document_version = "$DEFAULT"
      parameter {
        name   = "AutomationAssumeRole"
        values = [""]
      }
      parameter {
        name   = "InstanceId"
        values = ["{{TARGET_ID}}"]
      }
      parameter {
        name   = "NoReboot"
        values = ["false"]
      }
    }
  }
}

import {
  to = aws_ssm_maintenance_window_task.reboot_rhel
  id = "mw-071359ef89afc7322/72c07a86-535d-402c-adc3-d2cd275eeaab"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/72c07a86-535d-402c-adc3-d2cd275eeaab"
resource "aws_ssm_maintenance_window_task" "reboot_rhel" {
  cutoff_behavior  = null
  description      = null
  max_concurrency  = "100%"
  max_errors       = "100%"
  name             = "Reboot_RHEL"
  priority         = 6
  service_role_arn = "arn:aws:iam::947132430921:role/LCMP_Patching_Role"
  task_arn         = "AWS-RunShellScript"
  task_type        = "RUN_COMMAND"
  window_id        = "mw-071359ef89afc7322"
  targets {
    key    = "WindowTargetIds"
    values = ["094ec39c-45eb-427d-88bc-cabfb0f95470"]
  }
  task_invocation_parameters {
    run_command_parameters {
      comment              = null
      document_hash        = null
      document_hash_type   = null
      document_version     = "$DEFAULT"
      output_s3_bucket     = null
      output_s3_key_prefix = null
      service_role_arn     = null
      timeout_seconds      = 600
      parameter {
        name   = "commands"
        values = ["reboot"]
      }
      parameter {
        name   = "executionTimeout"
        values = ["3600"]
      }
      parameter {
        name   = "workingDirectory"
        values = [""]
      }
    }
  }
}

import {
  to = aws_ssm_maintenance_window_task.patch_non_db
  id = "mw-071359ef89afc7322/72d02a18-4990-4f54-b0d4-da2d7806f245"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/72d02a18-4990-4f54-b0d4-da2d7806f245"
resource "aws_ssm_maintenance_window_task" "patch_non_db" {
  cutoff_behavior  = null
  description      = null
  max_concurrency  = "100%"
  max_errors       = "100%"
  name             = "Patch_Non_Database"
  priority         = 4
  service_role_arn = "arn:aws:iam::947132430921:role/LCMP_Patching_Role"
  task_arn         = "AWS-RunPatchBaseline"
  task_type        = "RUN_COMMAND"
  window_id        = "mw-071359ef89afc7322"
  targets {
    key    = "WindowTargetIds"
    values = ["094ec39c-45eb-427d-88bc-cabfb0f95470", "11012024-e6ca-4a94-8c68-6261fd851a4a"]
  }
  task_invocation_parameters {
    run_command_parameters {
      comment              = null
      document_hash        = null
      document_hash_type   = null
      document_version     = "$DEFAULT"
      output_s3_bucket     = "lcmpdevpatchingresults"
      output_s3_key_prefix = "Patching_Non_Database"
      service_role_arn     = null
      timeout_seconds      = 600
      parameter {
        name   = "AssociationId"
        values = [""]
      }
      parameter {
        name   = "BaselineOverride"
        values = [""]
      }
      parameter {
        name   = "InstallOverrideList"
        values = [""]
      }
      parameter {
        name   = "Operation"
        values = ["Install"]
      }
      parameter {
        name   = "RebootOption"
        values = ["RebootIfNeeded"]
      }
      parameter {
        name   = "SnapshotId"
        values = [""]
      }
    }
  }
}

import {
  to = aws_ssm_maintenance_window_target.non_db_servers_rhel
  id = "mw-071359ef89afc7322/094ec39c-45eb-427d-88bc-cabfb0f95470"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/094ec39c-45eb-427d-88bc-cabfb0f95470"
resource "aws_ssm_maintenance_window_target" "non_db_servers_rhel" {
  description       = null
  name              = "Non_Database_Servers_RHEL"
  owner_information = null
  resource_type     = "INSTANCE"
  window_id         = "mw-071359ef89afc7322"
  targets {
    key    = "tag:Patch Group"
    values = ["Non_Database_Servers_RHEL"]
  }
}

import {
  to = aws_ssm_maintenance_window_target.non_db_servers_windows
  id = "mw-071359ef89afc7322/11012024-e6ca-4a94-8c68-6261fd851a4a"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/11012024-e6ca-4a94-8c68-6261fd851a4a"
resource "aws_ssm_maintenance_window_target" "non_db_servers_windows" {
  description       = null
  name              = "Non_Database_Servers_Windows"
  owner_information = null
  resource_type     = "INSTANCE"
  window_id         = "mw-071359ef89afc7322"
  targets {
    key    = "tag:Patch Group"
    values = ["Non_Database_Servers_Windows"]
  }
}

import {
  to = aws_ssm_maintenance_window_target.db_servers_windows
  id = "mw-071359ef89afc7322/313eecb3-82d9-4b21-80a0-5c08313e5e5d"
}

# __generated__ by Terraform from "mw-071359ef89afc7322/313eecb3-82d9-4b21-80a0-5c08313e5e5d"
resource "aws_ssm_maintenance_window_target" "db_servers_windows" {
  description       = null
  name              = "Database_Servers_Windows"
  owner_information = null
  resource_type     = "INSTANCE"
  window_id         = "mw-071359ef89afc7322"
  targets {
    key    = "tag:Patch Group"
    values = ["Database_Servers_Windows"]
  }
}
