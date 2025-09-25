# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/passrole"
resource "aws_iam_policy" "passrole" {
  description = null
  name        = "passrole"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = "iam:PassRole"
      Effect   = "Allow"
      Resource = "arn:aws:iam::947132430921:role/LCMP_CR_Server_Role"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/BAH_PassRole_Policy"
resource "aws_iam_policy" "bah_passrole_policy" {
  description = null
  name        = "BAH_PassRole_Policy"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = "iam:PassRole"
      Effect   = "Allow"
      Resource = ["arn:aws:iam::947132430921:role/LCMP_CR_Server_Role", "arn:aws:iam::947132430921:role/LCMP_Email_Server_Role", "arn:aws:iam::947132430921:role/LCMP_F5_Server_Role", "arn:aws:iam::947132430921:role/LCMP_AD_Server_Role", "arn:aws:iam::947132430921:role/LCMP_NAT_Server_Role", "arn:aws:iam::947132430921:role/LCMP_Splunk_Server_Role", "arn:aws:iam::947132430921:role/LCMP_WSP_Server_Role", "arn:aws:iam::947132430921:role/LCMP_WSUS_Server_Role", "arn:aws:iam::947132430921:role/LCMP_Database_Server_Role", "arn:aws:iam::947132430921:role/LCMP_Management_Server_Role", "arn:aws:iam::947132430921:role/LCMP_Build_Server_Role", "arn:aws:iam::947132430921:role/LCMP_Patching_Role", "arn:aws:iam::947132430921:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM", "arn:aws:iam::947132430921:role/aws-service-role/es.amazonaws.com/AWSServiceRoleForAmazonElasticsearchService", "arn:aws:iam::947132430921:role/diode-lambda-role", "arn:aws:iam::947132430921:role/lambda_ec2_role", "arn:aws:iam::947132430921:role/DLM-Snapshot_Role", "arn:aws:iam::947132430921:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS", "arn:aws:iam::947132430921:role/AmazonEC2ContainerServiceforEC2Role", "arn:aws:iam::947132430921:role/ecsTaskExecutionRole", "arn:aws:iam::947132430921:role/AWSCodeDeployRoleForECS", "arn:aws:iam::947132430921:role/aws-service-role/rds.amazonaws.com/AWSServiceRoleForRDS", "arn:aws:iam::947132430921:role/rds-monitoring-role", "arn:aws:iam::947132430921:role/rds-directoryservice-kerberos-access-role", "arn:aws:iam::947132430921:role/AmazonAppStreamServiceAccess", "arn:aws:iam::947132430921:role/aws-service-role/appstream.application-autoscaling.amazonaws.com/AWSServiceRoleForApplicationAutoScaling_AppStreamFleet", "arn:aws:iam::947132430921:role/service-role/ApplicationAutoScalingForAmazonAppStreamAccess", "arn:aws:iam::947132430921:role/LCMP_Application_Role", "arn:aws:iam::947132430921:role/AWS_ECS_ECR_role", "arn:aws:iam::947132430921:role/ECR_ECS_role", "arn:aws:iam::947132430921:role/aws-service-role/fsx.amazonaws.com/AWSServiceRoleForAmazonFSx", "arn:aws:iam::947132430921:role/Appstream_cameo_SSO", "arn:aws:iam::947132430921:role/CodePipelineServiceRole", "arn:aws:iam::947132430921:role/AmazonAppStreamPCAAccess", "arn:aws:iam::947132430921:role/LambdaStartContainerRole", "arn:aws:iam::947132430921:role/ContainerReadWriteS3Role", "arn:aws:iam::947132430921:role/AWSBackupAndRestoreRole", "arn:aws:iam::947132430921:role/ecsAnywhereRole", "arn:aws:iam::947132430921:role/strata-proto-glue-role", "*"]
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/BAHSSO_Admin_AdditionalPermissions"
resource "aws_iam_policy" "bahsso_admin_additionalpermissions" {
  description = null
  name        = "BAHSSO_Admin_AdditionalPermissions"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ec2-instance-connect:SendSerialConsoleSSHPublicKey", "appstream:*", "fsx:*", "acm-pca:List*", "acm-pca:Get*", "acm-pca:Describe*", "acm-pca:CreateCertificate*", "acm-pca:DeleteCertificate*", "acm-pca:IssueCertificate", "acm-pca:ImportCertificateAuthorityCertificate", "acm-pca:RestoreCertificateAuthority", "acm-pca:RevokeCertificate", "acm-pca:UpdateCertificateAuthority", "scheduler:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
      }, {
      Action   = ["cloudtrail:LookupEvents", "ecr:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "cloudtrailecr"
      }, {
      Action = ["ds:DeleteSnapshot", "ds:ListAuthorizedApplications", "ds:DescribeSharedDirectories", "ds:ListSchemaExtensions", "ds:DescribeEventTopics", "ds:DescribeSnapshots", "ds:GetSnapshotLimits", "ds:CreateComputer", "ds:ListTagsForResource", "ds:RestoreFromSnapshot", "ds:GetAuthorizedApplicationDetails", "ds:ListCertificates", "ds:AddTagsToResource", "ds:UnauthorizeApplication", "ds:DescribeConditionalForwarders", "ds:DescribeCertificate", "ds:CheckAlias", "ds:DescribeTrusts", "ds:DeregisterCertificate", "ds:CreateConditionalForwarder", "ds:DescribeLDAPSSettings", "ds:DeleteConditionalForwarder", "ds:GetDirectoryLimits", "ds:RemoveTagsFromResource", "ds:ResetUserPassword", "ds:CreateLogSubscription", "ds:ListLogSubscriptions", "ds:RegisterCertificate", "ds:DescribeDirectories", "ds:ListIpRoutes", "ds:AuthorizeApplication", "ds:DescribeDomainControllers", "ds:DescribeDirectories", "ds:AuthorizeApplication", "ds:UnauthorizeApplication", "ds:GetAuthorizedApplicationDetails", "ds:CreateConditionalForwarder", "ds:DeleteConditionalForwarder"]
      Condition = {
        "ForAnyValue:IpAddress" = {
          "aws:SourceIp" = ["128.229.4.0/24", "156.80.4.0/24"]
        }
      }
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ds1"
      }, {
      Action = ["ds:Enable*", "ds:Update*", "ds:UnshareDirectory", "ds:RemoveIpRoutes", "ds:CreateTrust", "ds:ConnectDirectory", "ds:ShareDirectory", "ds:UnauthorizeApplication", "ds:DeleteC*", "ds:CreateSnapshot", "ds:StartSchemaExtension", "ds:CreateIdentityPoolDirectory", "ds:CreateMicrosoftAD", "ds:AcceptSharedDirectory", "ds:DeleteT*", "ds:RegisterEventTopic", "ds:CancelSchemaExtension", "ds:AddIpRoutes", "ds:DeregisterEventTopic", "ds:CreateDirectory", "ds:DeleteD*", "ds:Disable*", "ds:RejectSharedDirectory", "ds:CreateAlias", "ds:AuthorizeApplication", "ds:DeleteL*", "ds:VerifyTrust"]
      Condition = {
        StringNotLike = {
          "aws:PrincipalARN" = ["arn:aws:iam::*:role/BAHCrossAccount_Automation_Role", "arn:aws:iam::*:role/BAHCrossAccount_Admin_Role", "arn:aws:iam::*:role/BAHOrgRole"]
        }
      }
      Effect   = "Deny"
      Resource = "*"
      Sid      = "ds"
      }, {
      Action   = ["iam:TagRole", "iam:TagPolicy", "iam:UntagRole", "iam:UntagPolicy", "iam:CreateRole"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "tagging"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/dev_additional_services"
resource "aws_iam_policy" "dev_additional_services" {
  description = null
  name        = "dev_additional_services"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:*", "rds:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
      },
      {
        Action = [
          "dynamodb:PutItem",
          "dynamodb:DescribeTable",
          "dynamodb:CreateTable",
          "dynamodb:CreateGlobalTable",
          "dynamodb:ListTables",
          "dynamodb:UpdateTable",
          "dynamodb:UpdateItem",
          "dynamodb:DeleteTable",
          "dynamodb:DeleteItem",
          "dynamodb:Query"
        ]
        Effect   = "Allow"
        Resource = "*"
        Sid      = "dynamodbPerms"
      },
      {
        Action   = "textract:*"
        Effect   = "Allow"
        Resource = "*"
        Sid      = "textractPerms"
      },
      {
        Action   = "cloudwatch:*"
        Effect   = "Allow"
        Resource = "*"
        Sid      = "cloudwatchPerms"
      },
      {
        Action   = "S3:*"
        Effect   = "Allow"
        Resource = "*"
        Sid      = "s3Perms"
      },
      {
        Action   = "bedrock:*"
        Effect   = "Allow"
        Resource = "*"
        Sid      = "bedrockPerms"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/dev_passrole"
resource "aws_iam_policy" "dev_passrole" {
  description = null
  name        = "dev_passrole"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = "iam:PassRole"
      Effect   = "Allow"
      Resource = ["arn:aws:iam::947132430921:role/aws-service-role/rds.amazonaws.com/AWSServiceRoleForRDS", "arn:aws:iam::947132430921:role/diode-lambda-role"]
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/dev_s3_policy"
resource "aws_iam_policy" "dev_s3_policy" {
  description = null
  name        = "dev_s3_policy"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:PutObject", "s3:Get*", "s3:ListBucketMultipartUploads", "s3:ListBucketVersions", "s3:ListBucket", "s3:DeleteObject", "s3:ListMultipartUploadParts"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::useast.bah-dev.cds-deploys/*", "arn:aws:s3:::useast.bah-dev.cds-deploys"]
      Sid      = "VisualEditor0"
      }, {
      Action   = ["s3:ListStorageLensConfigurations", "s3:ListAllMyBuckets", "s3:ListJobs"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor1"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/BAH_DLM"
resource "aws_iam_policy" "bah_dlm" {
  description = "IS-92316"
  name        = "BAH_DLM"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["dlm:CreateLifecyclePolicy", "dlm:UpdateLifecyclePolicy", "dlm:DeleteLifecyclePolicy", "dlm:GetLifecyclePolicies", "dlm:GetLifecyclePolicy", "dlm:ListTagsForResource", "dlm:TagResource"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::947132430921:policy/BAH_Strata_IAC"
resource "aws_iam_policy" "bah_strata_iac" {
  description = "Policy which grants S3, DynamoDB, EC2, FSx full access, and key creation and deletion in KMS."
  name        = "BAH_Strata_IAC"
  name_prefix = null
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["kms:GetPublicKey", "kms:ListKeyPolicies", "s3:*", "kms:ListRetirableGrants", "kms:GetKeyPolicy", "fsx:*", "sts:*", "dynamodb:*", "kms:ListResourceTags", "kms:ListGrants", "kms:GetParametersForImport", "kms:DescribeCustomKeyStores", "kms:ListKeys", "kms:GetKeyRotationStatus", "kms:ScheduleKeyDeletion", "kms:ListAliases", "ec2:*", "kms:DescribeKey", "kms:CreateKey", "ssm:*", "cloudwatch:*", "logs:*", "rds:*", "ecr:*", "ec2:ModifySnapshotAttribute", "ec2:CopySnapshot", "ec2:RegisterImage", "ec2:Describe*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags = {
    Group = "Strata"
  }
  tags_all = {
    Group = "Strata"
  }
}

## Added IAM policy for FluentBit to setup pod logging in CloudWatch
resource "aws_iam_policy" "fluent_bit_sa" {
  description = "Policy for EKS fluentbit to have log access"
  name        = "FluentBitCloudWatchPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action = [
        "logs:PutLogEvents",
        "logs:DescribeLogStreams",
        "logs:DescribeLogGroups",
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
}
