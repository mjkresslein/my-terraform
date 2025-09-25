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
  default     = "dev/s3/terraform.tfstate"
}

variable "ops_user_name" {
  description = "Identifiable name string of the person running terraform"
  type        = string
}
