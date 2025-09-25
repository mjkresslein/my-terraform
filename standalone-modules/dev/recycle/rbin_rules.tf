resource "aws_rbin_rule" "ami_five_day_rule" {
  description   = "AMI retention Rule for aged off AMIs"
  resource_type = "EC2_IMAGE"

  resource_tags {
    resource_tag_key   = "Retention"
    resource_tag_value = "1month"
  }

  retention_period {
    retention_period_value = 5
    retention_period_unit  = "DAYS"
  }

  tags = {
    "Name" = "AMI-5day-retention"
  }
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

resource "aws_rbin_rule" "ebs_five_day_rule" {
  description   = "EBS retention Rule"
  resource_type = "EBS_SNAPSHOT"

  retention_period {
    retention_period_value = 5
    retention_period_unit  = "DAYS"
  }

  tags = {
    "Name" = "EBS-5day-retention"
  }
}
