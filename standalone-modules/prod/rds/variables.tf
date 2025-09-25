variable "region" {
  description = "default region to use in this module"
  type        = string
  default     = "us-gov-west-1"
}

variable "backend_bucket" {
  description = "The bucket used for terraform backend"
  type        = string
  default     = "lcmp-prod-terraform-state"
}

variable "backend_path" {
  description = "path in the bucket to store TF state"
  type        = string
  default     = "rds/terraform.tfstate"
}

variable "ops_user_name" {
  description = "Identifiable name string of the person running terraform"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
  default = "vpc-0556642c741259855"
}
variable "vpc_cidr" {
  description = "CIDR for VPC"
  type        = list(string)
  default = [
    "10.19.0.0/16"
  ]
}

variable "eks_sgs" {
  description = "EKS Worker Security Groups"
  type        = list(string)
  default = [
    "sg-0e91304a0102a77e8",
    "sg-02bf07cf272083dbc"
  ]
}
