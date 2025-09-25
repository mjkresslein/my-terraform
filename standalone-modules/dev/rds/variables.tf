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
  default     = "dev/rds/terraform.tfstate"
}

variable "ops_user_name" {
  description = "Identifiable name string of the person running terraform"
  type        = string
}

variable "bah_vpn_cidrs" {
  description = "CIDRs for BAH VPN"
  type        = list(string)
  default = [
    "128.229.4.0/24",
    "156.80.0.0/24",
    "156.80.4.0/24"
  ]
}