# __generated__ by Terraform from "LCMP_CR_Server_Role:Dynamo_perm"
resource "aws_iam_role_policy" "dynamo_perm" {
  name        = "Dynamo_perm"
  name_prefix = null
  policy = jsonencode({
    Statement = [{
      Action   = ["dynamodb:PutItem", "dynamodb:DescribeTable", "dynamodb:CreateTable", "dynamodb:CreateGlobalTable", "dynamodb:ListTables", "dynamodb:UpdateTable", "dynamodb:UpdateItem", "dynamodb:DeleteTable", "dynamodb:DeleteItem", "dynamodb:Query"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  role = "LCMP_CR_Server_Role"
}

# __generated__ by Terraform from "LCMP_CR_Server_Role:Bedrocknew"
resource "aws_iam_role_policy" "bedrocknew" {
  name        = "Bedrocknew"
  name_prefix = null
  policy = jsonencode({
    Statement = [{
      Action   = ["bedrock:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "BedrockAll"
      }, {
      Action   = ["kms:DescribeKey"]
      Effect   = "Allow"
      Resource = "arn:*:kms:*:::*"
      Sid      = "DescribeKey"
      }, {
      Action   = ["iam:ListRoles", "ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "APIsWithAllResourceAccess"
      }, {
      Action = ["sagemaker:CreateEndpoint", "sagemaker:CreateEndpointConfig", "sagemaker:CreateModel", "sagemaker:DeleteEndpoint", "sagemaker:UpdateEndpoint"]
      Condition = {
        StringEquals = {
          "aws:CalledViaLast"                     = "bedrock.amazonaws.com"
          "aws:ResourceTag/sagemaker-sdk:bedrock" = "compatible"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:sagemaker:*:*:endpoint/*", "arn:aws:sagemaker:*:*:endpoint-config/*", "arn:aws:sagemaker:*:*:model/*"]
      Sid      = "MarketplaceModelEndpointMutatingAPIs"
      }, {
      Action = ["sagemaker:AddTags"]
      Condition = {
        "ForAllValues:StringEquals" = {
          "aws:TagKeys" = ["sagemaker-sdk:bedrock", "bedrock:marketplace-registration-status", "sagemaker-studio:hub-content-arn"]
        }
        StringLike = {
          "aws:RequestTag/bedrock:marketplace-registration-status" = "registered"
          "aws:RequestTag/sagemaker-sdk:bedrock"                   = "compatible"
          "aws:RequestTag/sagemaker-studio:hub-content-arn"        = "arn:aws:sagemaker:*:aws:hub-content/SageMakerPublicHub/Model/*"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:sagemaker:*:*:endpoint/*", "arn:aws:sagemaker:*:*:endpoint-config/*", "arn:aws:sagemaker:*:*:model/*"]
      Sid      = "MarketplaceModelEndpointAddTagsOperations"
      }, {
      Action = ["sagemaker:DeleteTags"]
      Condition = {
        "ForAllValues:StringEquals" = {
          "aws:TagKeys" = ["sagemaker-sdk:bedrock", "bedrock:marketplace-registration-status", "sagemaker-studio:hub-content-arn"]
        }
        StringLike = {
          "aws:ResourceTag/bedrock:marketplace-registration-status" = "registered"
          "aws:ResourceTag/sagemaker-sdk:bedrock"                   = "compatible"
          "aws:ResourceTag/sagemaker-studio:hub-content-arn"        = "arn:aws:sagemaker:*:aws:hub-content/SageMakerPublicHub/Model/*"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:sagemaker:*:*:endpoint/*", "arn:aws:sagemaker:*:*:endpoint-config/*", "arn:aws:sagemaker:*:*:model/*"]
      Sid      = "MarketplaceModelEndpointDeleteTagsOperations"
      }, {
      Action = ["sagemaker:DescribeEndpoint", "sagemaker:DescribeEndpointConfig", "sagemaker:DescribeModel", "sagemaker:ListTags"]
      Condition = {
        StringEquals = {
          "aws:CalledViaLast" = "bedrock.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:sagemaker:*:*:endpoint/*", "arn:aws:sagemaker:*:*:endpoint-config/*", "arn:aws:sagemaker:*:*:model/*"]
      Sid      = "MarketplaceModelEndpointNonMutatingAPIs"
      }, {
      Action = ["sagemaker:InvokeEndpoint", "sagemaker:InvokeEndpointWithResponseStream"]
      Condition = {
        StringEquals = {
          "aws:CalledViaLast"                     = "bedrock.amazonaws.com"
          "aws:ResourceTag/sagemaker-sdk:bedrock" = "compatible"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:sagemaker:*:*:endpoint/*"]
      Sid      = "MarketplaceModelEndpointInvokingOperations"
      }, {
      Action   = ["sagemaker:DescribeHubContent"]
      Effect   = "Allow"
      Resource = ["arn:aws:sagemaker:*:aws:hub-content/SageMakerPublicHub/Model/*", "arn:aws:sagemaker:*:aws:hub/SageMakerPublicHub"]
      Sid      = "DiscoveringMarketplaceModel"
      }, {
      Action   = ["sagemaker:ListHubContents"]
      Effect   = "Allow"
      Resource = "arn:aws:sagemaker:*:aws:hub/SageMakerPublicHub"
      Sid      = "AllowMarketplaceModelsListing"
      }, {
      Action = ["iam:PassRole"]
      Condition = {
        StringEquals = {
          "iam:PassedToService" = ["sagemaker.amazonaws.com", "bedrock.amazonaws.com"]
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:iam::*:role/*SageMaker*ForBedrock*"]
      Sid      = "PassRoleToSageMaker"
      }, {
      Action = ["iam:PassRole"]
      Condition = {
        StringEquals = {
          "iam:PassedToService" = ["bedrock.amazonaws.com"]
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:iam::*:role/*AmazonBedrock*"
      Sid      = "PassRoleToBedrock"
    }]
    Version = "2012-10-17"
  })
  role = "LCMP_CR_Server_Role"
}

# __generated__ by Terraform from "LCMP_CR_Server_Role:ACMFullAccess"
resource "aws_iam_role_policy" "acmfullaccess" {
  name        = "ACMFullAccess"
  name_prefix = null
  policy = jsonencode({
    Statement = [{
      Action   = "acm:*"
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  role = "LCMP_CR_Server_Role"
}

resource "aws_iam_role_policy" "lcmp_cr_server_textract" {
  name = "TextractAccess"
  policy = jsonencode({
    Statement = [{
      Action   = "textract:*"
      Effect   = "Allow"
      Resource = "*"
      Sid      = "textractPerms"
    }]
    Version = "2012-10-17"
  })
  role = "LCMP_CR_Server_Role"
}