terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "lcmp-prod-terraform-state"
    key    = "ecs/terraform.tfstate"
    region = "us-gov-west-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-gov-west-1"
  default_tags {
    tags = {
      Environment   = "Production"
      ManagedBy     = "${var.ops_user_name} via Terraform"
      StateLocation = "s3://${var.backend_bucket}/${var.backend_path}"
    }
  }
}
