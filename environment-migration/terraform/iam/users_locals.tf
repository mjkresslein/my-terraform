locals {
  iam_users = [
    {
      id   = "ECR_user",
      name = "ecr_user"
    },
    {
      id   = "Service_Email",
      name = "service_email"
    },
    {
      id   = "Service_GovConnect",
      name = "service_govconnect"
    },
    {
      id   = "strata-dev-s3-sync-user",
      name = "strata_dev_s3_sync_user"
    },
  ]
}
