variable "region" {
  description = "default region to use in this module"
  type        = string
  default     = "us-gov-west-1"
}

variable "backend_bucket" {
  description = "The bucket used for terraform backend"
  type        = string
  default     = "lcmp-staging-terraform-state"
}

variable "backend_path" {
  description = "path in the bucket to store TF state"
  type        = string
  default     = "dev/redis/terraform.tfstate"
}

variable "ops_user_name" {
  description = "Identifiable name string of the person running terraform"
  type        = string
}

variable "sec_group_ids" {
  description = "Security group IDs to use for Redis cluster"
  type        = list(string)
  default     = ["sg-0ffff6d17550b691e", "sg-0de9ba70c9999fd65", "sg-02169950b9644dca9", "sg-0e465bd8bb56692bd"]
}

variable "group_subnet_ids" {
  description = "Subnet IDs to use for subnet group"
  type        = list(string)
  default     = ["subnet-038e2206050c62769", "subnet-0c83d48d1290e40bc"]
}