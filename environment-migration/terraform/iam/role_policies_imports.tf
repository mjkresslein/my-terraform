import {
  to = aws_iam_role_policy.access_to_ssm
  id = "ADOBuildTriggerLambdaRole:access-to-ssm"
}
import {
  to = aws_iam_role_policy.appstream_sso_policy
  id = "Appstream_cameo_SSO:Appstream_SSO_Policy"
}
import {
  to = aws_iam_role_policy.appstream_sso_policy_1
  id = "AppStream_SSO:Appstream_sso_policy"
}
import {
  to = aws_iam_role_policy.bahcrossaccount_automation_role
  id = "BAHCrossAccount_Automation_Role:BAHCrossAccount_Automation_Role"
}
import {
  to = aws_iam_role_policy.administratoraccess
  id = "BAHOrgRole:AdministratorAccess"
}
import {
  to = aws_iam_role_policy.bahsplunkrole_policy
  id = "BAHSplunkRole:BAHSplunkRole_Policy"
}
import {
  to = aws_iam_role_policy.cloudtrailpolicy
  id = "BAHTenableCSPMv2:CloudTrailPolicy"
}
import {
  to = aws_iam_role_policy.read_onlypolicy
  id = "BAHTenableCSPMv2:Read-onlyPolicy"
}
import {
  to = aws_iam_role_policy.workloadprotectionpolicy
  id = "BAHTenableCSPMv2:WorkloadProtectionPolicy"
}
import {
  to = aws_iam_role_policy.bahvpcflowlogspolicy
  id = "BAHVPCFlowLogsRole:BAHVPCFlowLogsPolicy"
}
import {
  to = aws_iam_role_policy.invokeeventbus
  id = "BAH_EventBus_Role:InvokeEventBus"
}
import {
  to = aws_iam_role_policy.ecr_ecs_policy
  id = "ECR_ECS_role:ECR_ECS_policy"
}
import {
  to = aws_iam_role_policy.s3_policy
  id = "ECR_ECS_role:S3_policy"
}
import {
  to = aws_iam_role_policy.awssecretsaccess
  id = "ecsTaskExecutionRole:AWSSecretsAccess"
}
import {
  to = aws_iam_role_policy.dynamodbfullaccessforecs
  id = "ecsTaskExecutionRole:DynamoDBFullAccessForECS"
}
import {
  to = aws_iam_role_policy.strata_efs_policy
  id = "kubernetes-controlplane:strata-efs-policy"
}
import {
  to = aws_iam_role_policy.strata_dev_cluster_inline_policies
  id = "kubernetes-worker:strata-dev-cluster-inline-policies"
}
import {
  to = aws_iam_role_policy.strata_efs_policy_1
  id = "kubernetes-worker:strata-efs-policy"
}
import {
  to = aws_iam_role_policy.testallaccesss3
  id = "LambdaStartContainerRole:TestAllAccessS3"
}
import {
  to = aws_iam_role_policy.lcmp_hyperglance_dev_role_inlinepolicy
  id = "LCMP-Hyperglance-Dev-Role:LCMP-Hyperglance-Dev-Role_inlinePolicy"
}
import {
  to = aws_iam_role_policy.kmspolicy
  id = "LCMP_Build_Server_Role:KMSPolicy"
}
import {
  to = aws_iam_role_policy.acmfullaccess
  id = "LCMP_CR_Server_Role:ACMFullAccess"
}
import {
  to = aws_iam_role_policy.bedrocknew
  id = "LCMP_CR_Server_Role:Bedrocknew"
}
import {
  to = aws_iam_role_policy.dynamo_perm
  id = "LCMP_CR_Server_Role:Dynamo_perm"
}
import {
  to = aws_iam_role_policy.rdsfullpermissions
  id = "LCMP_Database_Server_Role:RDSFullPermissions"
}
import {
  to = aws_iam_role_policy.additonal_services
  id = "LCMP_F5_Server_Role:additonal_services"
}
import {
  to = aws_iam_role_policy.pecok_ml_full_access_test
  id = "PECOK-ML-Developer-Role:PECOK-ML-FULL-ACCESS-TEST"
}
import {
  to = aws_iam_role_policy.strata_dev_bah_api_merger
  id = "rio:strata-dev-bah-api-merger"
}
import {
  to = aws_iam_role_policy.strata_dev_bah_rio
  id = "rio:strata-dev-bah-rio"
}
import {
  to = aws_iam_role_policy.strata_dev_baseline_api_merger
  id = "rio:strata-dev-baseline-api-merger"
}
import {
  to = aws_iam_role_policy.strata_dev_baseline_rio
  id = "rio:strata-dev-baseline-rio"
}
import {
  to = aws_iam_role_policy.strata_proto_bah_docworkflow
  id = "strata-proto-bah-docworkflow:strata-proto-bah-docworkflow"
}
import {
  to = aws_iam_role_policy.strata_proto_bah_manpower
  id = "strata-proto-bah-manpower:strata-proto-bah-manpower"
}
import {
  to = aws_iam_role_policy.strata_proto_bah_program
  id = "strata-proto-bah-program:strata-proto-bah-program"
}
import {
  to = aws_iam_role_policy.strata_proto_bah_quickview
  id = "strata-proto-bah-quickview:strata-proto-bah-quickview"
}
import {
  to = aws_iam_role_policy.strata_proto_bah_rio
  id = "strata-proto-bah-rio:strata-proto-bah-rio"
}
import {
  to = aws_iam_role_policy.strata_proto_bah_schedules
  id = "strata-proto-bah-schedules:strata-proto-bah-schedules"
}
import {
  to = aws_iam_role_policy.strata_proto_baseline_docworkflow
  id = "strata-proto-baseline-docworkflow:strata-proto-baseline-docworkflow"
}
import {
  to = aws_iam_role_policy.strata_proto_baseline_manpower
  id = "strata-proto-baseline-manpower:strata-proto-baseline-manpower"
}
import {
  to = aws_iam_role_policy.strata_proto_baseline_program
  id = "strata-proto-baseline-program:strata-proto-baseline-program"
}
import {
  to = aws_iam_role_policy.strata_proto_baseline_quickview
  id = "strata-proto-baseline-quickview:strata-proto-baseline-quickview"
}
import {
  to = aws_iam_role_policy.strata_proto_baseline_rio
  id = "strata-proto-baseline-rio:strata-proto-baseline-rio"
}
import {
  to = aws_iam_role_policy.strata_proto_baseline_schedules
  id = "strata-proto-baseline-schedules:strata-proto-baseline-schedules"
}
import {
  to = aws_iam_role_policy.strata_proto_strata_account
  id = "strata-proto-strata-account:strata-proto-strata-account"
}
import {
  to = aws_iam_role_policy.strata_proto_strata_user_control
  id = "strata-proto-strata-user-control:strata-proto-strata-user-control"
}
import {
  to = aws_iam_role_policy.stratalambdapipelinepolicy
  id = "StrataLambdaPipelineRole:StrataLambdaPipelinePolicy"
}
import {
  to = aws_iam_role_policy.vault_aws_auth
  id = "VaultKMSUnsealRole:vault-aws-auth"
}
import {
  to = aws_iam_role_policy.vault_unseal_inline_policy
  id = "VaultKMSUnsealRole:vault_unseal_inline_policy"
}
