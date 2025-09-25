terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "lcmp-staging-terraform-state"
    key    = "rds/terraform.tfstate"
    region = "us-gov-west-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-gov-west-1"
  default_tags {
    tags = {
      Environment   = "Staging"
      ManagedBy     = "${var.ops_user_name} via Terraform"
      StateLocation = "s3://${var.backend_bucket}/${var.backend_path}"
    }
  }
}
