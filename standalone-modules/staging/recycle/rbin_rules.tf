import {
  to = aws_rbin_rule.ami_seven_day_rule
  id = "7MybhTI69f4"
}

import {
  to = aws_rbin_rule.ebs_seven_day_rule
  id = "Llr37je6gt1"
}

resource "aws_rbin_rule" "ami_safety_rule" {
  description   = "AMI retention Rule for AMIs that are supposed to be retained"
  resource_type = "EC2_IMAGE"

  resource_tags {
    resource_tag_key   = "Retention"
    resource_tag_value = "DoNotDelete"
  }

  retention_period {
    retention_period_value = 30
    retention_period_unit  = "DAYS"
  }

  tags = {
    "Name" = "AMI-safety-retention"
  }
}

# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "7MybhTI69f4"
resource "aws_rbin_rule" "ami_seven_day_rule" {
  description   = "7 Day retention for AMIs"
  resource_type = "EC2_IMAGE"
  tags = {
    "Name" = "AMI-7day-retention"
  }
  tags_all = {}
  retention_period {
    retention_period_unit  = "DAYS"
    retention_period_value = 7
  }
}

# __generated__ by Terraform from "Llr37je6gt1"
resource "aws_rbin_rule" "ebs_seven_day_rule" {
  description   = "7 Day retention for Snapshots"
  resource_type = "EBS_SNAPSHOT"
  tags = {
    "Name" = "EBS-7day-retention"
  }
  tags_all = {}
  retention_period {
    retention_period_unit  = "DAYS"
    retention_period_value = 7
  }
}
