### Temporary EC2 solution for MAAP team to connect to in order to interact with RDS instance.

# resource "aws_instance" "maap_temp" {
#   ami                    = "ami-00ca8c7e62f99014d"
#   instance_type          = "t3.medium"
#   subnet_id              = "subnet-043dc85e20d318031"
#   vpc_security_group_ids = var.eks_sgs
#   iam_instance_profile   = "eks-22cb1ab8-2e11-75c0-1efa-942bf16ab277"
#   root_block_device {
#     encrypted = true
#     kms_key_id = "b8a4621e-2402-40e0-8723-9e6a4715714e"
#     volume_size = 15
#   }

#   tags = {
#     Name = "maap-temp"
#   }
# }
