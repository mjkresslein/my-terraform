# resource "aws_iam_policy" "datasync_agent_s3_access" {
#   name        = "DataSyncAgentS3Access"
#   path        = "/"
#   description = "IAM Policy for DataSync system user"

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = [
#             "s3:ListBucket",
#             "s3:GetBucketLocation",
#             "s3:ListBucketMultipartUploads"
#         ]
#         Effect   = "Allow"
#         Resource = "arn:aws-us-gov:s3:::${var.govcloud_bucket_name}"
#       },
#       {
#         Action = [
#             "s3:AbortMultipartUpload",
#             "s3:DeleteObject",
#             "s3:GetObject",
#             "s3:GetObjectTagging",
#             "s3:GetObjectVersion",
#             "s3:GetObjectVersionTagging",
#             "s3:ListMultipartUploadParts",
#             "s3:PutObject",
#             "s3:PutObjectTagging"
#         ]
#         Effect = "Allow"
#         Resource = "arn:aws-us-gov:s3:::${var.govcloud_bucket_name}/*"
#       }
#     ]
#   })
# }

resource "aws_iam_user" "datasync_agent_user" {
  name          = var.datasync_username
  path          = "/"
  force_destroy = true

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "datasync_agent_user_access_key" {
  user = aws_iam_user.datasync_agent_user.name
}

data "aws_iam_policy_document" "datasync_agent_s3_access" {
  statement {
    effect = "Allow"
    actions = [
      "s3:ListBucket",
      "s3:GetBucketLocation",
      "s3:ListBucketMultipartUploads"
    ]
    resources = ["arn:aws-us-gov:s3:::${var.govcloud_bucket_name}"]
  }
  statement {
    effect = "Allow"
    actions = [
      "s3:AbortMultipartUpload",
      "s3:DeleteObject",
      "s3:GetObject",
      "s3:GetObjectTagging",
      "s3:GetObjectVersion",
      "s3:GetObjectVersionTagging",
      "s3:ListMultipartUploadParts",
      "s3:PutObject",
      "s3:PutObjectTagging"
    ]
    resources = ["arn:aws-us-gov:s3:::${var.govcloud_bucket_name}/*"]
  }
}

resource "aws_iam_user_policy" "datasync_agent_s3_access" {
  name   = "DataSyncAgentS3Access"
  user   = aws_iam_user.datasync_agent_user.name
  policy = data.aws_iam_policy_document.datasync_agent_s3_access.json
}
