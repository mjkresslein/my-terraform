# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "arn:aws-us-gov:iam::482556331625:policy/BAH_SecretsManagerSSM_Policy"
resource "aws_iam_policy" "bah_secretsmanagerssm_policy" {
  description = null
  name        = "BAH_SecretsManagerSSM_Policy"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:*", "secretsmanager:GetSecretValue", "kms:Decrypt"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "ecsTaskExecutionRole"
resource "aws_iam_role" "ecs_task_execution_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2008-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "ecsTaskExecutionRole"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# ## ROLE FOR VULCAN 2.0 EKS DEPLOYMENT
# resource "aws_iam_role" "vulcan_2024_api_role" {
#   assume_role_policy = jsonencode({
#     Statement = [{
#       Action = "sts:AssumeRoleWithWebIdentity"
#       Effect = "Allow"
#       Principal = {
#         Federated = "arn:aws-us-gov:iam::482556331625:oidc-provider/oidc.eks.us-gov-west-1.amazonaws.com/id/A248BBDD8A6650EE393F8A8034BFCFB3"
#       }
#       Condition = {
#         StringEquals = {
#           "oidc.eks.us-gov-west-1.amazonaws.com/id/A248BBDD8A6650EE393F8A8034BFCFB3:sub" = "system:serviceaccount:vc25:vulcan-2024-api"
#           "oidc.eks.us-gov-west-1.amazonaws.com/id/A248BBDD8A6650EE393F8A8034BFCFB3:aud" = "sts.amazonaws.com"
#         }
#       }
#     }]
#   })
#   description           = "strata-stage Vulcan 2024 role"
#   force_detach_policies = false
#   max_session_duration  = 3600
#   name                  = "strata-stage-vc25-vulcan-2024-api-role"
#   name_prefix           = null
#   path                  = "/"
#   permissions_boundary  = null
#   tags = {
#     Project = "Strata"
#   }
#   tags_all = {}
# }

# resource "aws_iam_policy" "vulcan_2024_api_policy" {
#   description = "strata-staging Vulcan 2024 policy attached to a EKS Service Account for accessing AWS services"
#   name        = "strata-staging-vc25-vulcan-2024-api-policy"
#   name_prefix = null
#   path        = "/"
#   policy = jsonencode({
#     Statement = [{
#       Action   = ["dynamodb:*"]
#       Effect   = "Allow"
#       Resource = "*"
#       Sid      = "DynamoDBAccess"
#     }]
#     Version = "2012-10-17"
#   })
#   tags = {
#     Project = "Strata"
#   }
#   tags_all = {}
# }

# resource "aws_iam_policy_attachment" "vulcan_2024_api_policy_attachment" {
#   name       = "vulcan-2024-api-policy-attachment"
#   roles      = [aws_iam_role.vulcan_2024_api_role.name]
#   policy_arn = aws_iam_policy.vulcan_2024_api_policy.arn
# }
