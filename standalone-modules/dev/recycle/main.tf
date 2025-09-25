terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "lcmp-ops-terraform-state"
    key    = "dev/rbin/terraform.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment   = "Dev"
      ManagedBy     = "${var.ops_user_name} via Terraform"
      StateLocation = "s3://${var.backend_bucket}/${var.backend_path}"
    }
  }
}
