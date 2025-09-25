locals {
  iam_role_policys = [
    {
      id   = "ADOBuildTriggerLambdaRole:access-to-ssm",
      name = "access_to_ssm"
    },
    {
      id   = "Appstream_cameo_SSO:Appstream_SSO_Policy",
      name = "appstream_sso_policy"
    },
    {
      id   = "AppStream_SSO:Appstream_sso_policy",
      name = "appstream_sso_policy"
    },
    {
      id   = "BAHCrossAccount_Automation_Role:BAHCrossAccount_Automation_Role",
      name = "bahcrossaccount_automation_role"
    },
    {
      id   = "BAHOrgRole:AdministratorAccess",
      name = "administratoraccess"
    },
    {
      id   = "BAHSplunkRole:BAHSplunkRole_Policy",
      name = "bahsplunkrole_policy"
    },
    {
      id   = "BAHTenableCSPMv2:CloudTrailPolicy",
      name = "cloudtrailpolicy"
    },
    {
      id   = "BAHTenableCSPMv2:Read-onlyPolicy",
      name = "read_onlypolicy"
    },
    {
      id   = "BAHTenableCSPMv2:WorkloadProtectionPolicy",
      name = "workloadprotectionpolicy"
    },
    {
      id   = "BAHVPCFlowLogsRole:BAHVPCFlowLogsPolicy",
      name = "bahvpcflowlogspolicy"
    },
    {
      id   = "BAH_EventBus_Role:InvokeEventBus",
      name = "invokeeventbus"
    },
    {
      id   = "ECR_ECS_role:ECR_ECS_policy",
      name = "ecr_ecs_policy"
    },
    {
      id   = "ECR_ECS_role:S3_policy",
      name = "s3_policy"
    },
    {
      id   = "ecsTaskExecutionRole:AWSSecretsAccess",
      name = "awssecretsaccess"
    },
    {
      id   = "ecsTaskExecutionRole:DynamoDBFullAccessForECS",
      name = "dynamodbfullaccessforecs"
    },
    {
      id   = "kubernetes-controlplane:strata-efs-policy",
      name = "strata_efs_policy"
    },
    {
      id   = "kubernetes-worker:strata-dev-cluster-inline-policies",
      name = "strata_dev_cluster_inline_policies"
    },
    {
      id   = "kubernetes-worker:strata-efs-policy",
      name = "strata_efs_policy"
    },
    {
      id   = "LambdaStartContainerRole:TestAllAccessS3",
      name = "testallaccesss3"
    },
    {
      id   = "LCMP-Hyperglance-Dev-Role:LCMP-Hyperglance-Dev-Role_inlinePolicy",
      name = "lcmp_hyperglance_dev_role_inlinepolicy"
    },
    {
      id   = "LCMP_Build_Server_Role:KMSPolicy",
      name = "kmspolicy"
    },
    {
      id   = "LCMP_CR_Server_Role:ACMFullAccess",
      name = "acmfullaccess"
    },
    {
      id   = "LCMP_CR_Server_Role:Bedrocknew",
      name = "bedrocknew"
    },
    {
      id   = "LCMP_CR_Server_Role:Dynamo_perm",
      name = "dynamo_perm"
    },
    {
      id   = "LCMP_Database_Server_Role:RDSFullPermissions",
      name = "rdsfullpermissions"
    },
    {
      id   = "LCMP_F5_Server_Role:additonal_services",
      name = "additonal_services"
    },
    {
      id   = "PECOK-ML-Developer-Role:PECOK-ML-FULL-ACCESS-TEST",
      name = "pecok_ml_full_access_test"
    },
    {
      id   = "rio:strata-dev-bah-api-merger",
      name = "strata_dev_bah_api_merger"
    },
    {
      id   = "rio:strata-dev-bah-rio",
      name = "strata_dev_bah_rio"
    },
    {
      id   = "rio:strata-dev-baseline-api-merger",
      name = "strata_dev_baseline_api_merger"
    },
    {
      id   = "rio:strata-dev-baseline-rio",
      name = "strata_dev_baseline_rio"
    },
    {
      id   = "strata-proto-bah-docworkflow:strata-proto-bah-docworkflow",
      name = "strata_proto_bah_docworkflow"
    },
    {
      id   = "strata-proto-bah-manpower:strata-proto-bah-manpower",
      name = "strata_proto_bah_manpower"
    },
    {
      id   = "strata-proto-bah-program:strata-proto-bah-program",
      name = "strata_proto_bah_program"
    },
    {
      id   = "strata-proto-bah-quickview:strata-proto-bah-quickview",
      name = "strata_proto_bah_quickview"
    },
    {
      id   = "strata-proto-bah-rio:strata-proto-bah-rio",
      name = "strata_proto_bah_rio"
    },
    {
      id   = "strata-proto-bah-schedules:strata-proto-bah-schedules",
      name = "strata_proto_bah_schedules"
    },
    {
      id   = "strata-proto-baseline-docworkflow:strata-proto-baseline-docworkflow",
      name = "strata_proto_baseline_docworkflow"
    },
    {
      id   = "strata-proto-baseline-manpower:strata-proto-baseline-manpower",
      name = "strata_proto_baseline_manpower"
    },
    {
      id   = "strata-proto-baseline-program:strata-proto-baseline-program",
      name = "strata_proto_baseline_program"
    },
    {
      id   = "strata-proto-baseline-quickview:strata-proto-baseline-quickview",
      name = "strata_proto_baseline_quickview"
    },
    {
      id   = "strata-proto-baseline-rio:strata-proto-baseline-rio",
      name = "strata_proto_baseline_rio"
    },
    {
      id   = "strata-proto-baseline-schedules:strata-proto-baseline-schedules",
      name = "strata_proto_baseline_schedules"
    },
    {
      id   = "strata-proto-strata-account:strata-proto-strata-account",
      name = "strata_proto_strata_account"
    },
    {
      id   = "strata-proto-strata-user-control:strata-proto-strata-user-control",
      name = "strata_proto_strata_user_control"
    },
    {
      id   = "StrataLambdaPipelineRole:StrataLambdaPipelinePolicy",
      name = "stratalambdapipelinepolicy"
    },
    {
      id   = "VaultKMSUnsealRole:vault-aws-auth",
      name = "vault_aws_auth"
    },
    {
      id   = "VaultKMSUnsealRole:vault_unseal_inline_policy",
      name = "vault_unseal_inline_policy"
    },
  ]
}
