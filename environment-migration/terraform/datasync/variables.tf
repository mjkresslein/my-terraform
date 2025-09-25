variable "region" {
  description = "default region to use in this module"
  type        = string
  default     = "us-east-1"
}

variable "backend_bucket" {
  description = "The bucket used for terraform backend"
  type        = string
  default     = "lcmp-ops-terraform-state"
}

variable "backend_path" {
  description = "path in the bucket to store TF state"
  type        = string
  default     = "dev/migration/datasync/terraform.tfstate"
}

variable "ops_user_name" {
  description = "Identifiable name string of the person running terraform"
  type        = string
}

variable "govcloud_bucket_name" {
  description = "Name of the Bucket in GovCloud for DataSync object location"
  type        = string
  default     = "lcmp-dev-gov-datasync"
}

variable "datasync_username" {
  description = "Username for the datasync IAM user"
  type        = string
  default     = "DataSyncAgent"
}

variable "vpc_id" {
  description = "VPC ID where the datasync service is"
  type        = string
  default     = "vpc-00b58f67"
}

variable "subnet_id" {
  description = "subnets to use for datasync endpoint"
  type        = string
  default     = "subnet-4777c17b"
}

variable "sec_group_ids" {
  description = "security groups for the datasync endpoint"
  type        = list(string)
  default     = ["sg-09b9d638401452936"]
}