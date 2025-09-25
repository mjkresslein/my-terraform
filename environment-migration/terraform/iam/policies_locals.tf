locals {
  iam_policys = [
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AccessAnalyzerMonitorServicePolicy_VCSPOOHGKG",
      name = "accessanalyzermonitorservicepolicy_vcspoohgkg"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AccessAnalyzerMonitorServicePolicy_VI5DIHNJY3",
      name = "accessanalyzermonitorservicepolicy_vi5dihnjy3"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T160118",
      name = "amazonsagemaker_executionpolicy_20240911t160118"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T160171",
      name = "amazonsagemaker_executionpolicy_20240911t160171"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T160324",
      name = "amazonsagemaker_executionpolicy_20240911t160324"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T160794",
      name = "amazonsagemaker_executionpolicy_20240911t160794"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T161016",
      name = "amazonsagemaker_executionpolicy_20240911t161016"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T161149",
      name = "amazonsagemaker_executionpolicy_20240911t161149"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T161365",
      name = "amazonsagemaker_executionpolicy_20240911t161365"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20240911T161928",
      name = "amazonsagemaker_executionpolicy_20240911t161928"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20241007T110227",
      name = "amazonsagemaker_executionpolicy_20241007t110227"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20241007T110589",
      name = "amazonsagemaker_executionpolicy_20241007t110589"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMaker-ExecutionPolicy-20241007T112088",
      name = "amazonsagemaker_executionpolicy_20241007t112088"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20240911T160146",
      name = "amazonsagemakerservicecatalogproductsuserole_20240911t160146"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/AWS_ServiceGovCloud_Policy",
      name = "aws_servicegovcloud_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/AWS_ServiceStagConnect_Policy",
      name = "aws_servicestagconnect_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH-event-driven-custodian-role",
      name = "bah_event_driven_custodian_role"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH-kion-service-role-policy",
      name = "bah_kion_service_role_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAHPassRolePolicy",
      name = "bahpassrolepolicy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAHSplunkPolicy",
      name = "bahsplunkpolicy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAHSSO_Admin_AdditionalPermissions",
      name = "bahsso_admin_additionalpermissions"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAHTenableReadOnlyPolicy",
      name = "bahtenablereadonlypolicy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAHTenableWorkloadProtectionPolicy",
      name = "bahtenableworkloadprotectionpolicy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_AI_Services",
      name = "bah_ai_services"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_API_Gateway_Policy",
      name = "bah_api_gateway_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_DLM",
      name = "bah_dlm"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_EC2_InstanceMgmt",
      name = "bah_ec2_instancemgmt"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_Kion_Lambda_Policy",
      name = "bah_kion_lambda_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_Passrole_Diode",
      name = "bah_passrole_diode"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_PassRole_Policy",
      name = "bah_passrole_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_RedCanary_ListandDescribeResources",
      name = "bah_redcanary_listanddescriberesources"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_Route53Domains_Full_Access_policy",
      name = "bah_route53domains_full_access_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_Route53_Full_Access",
      name = "bah_route53_full_access"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_S3AnalyticsAccess",
      name = "bah_s3analyticsaccess"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_SecretsManagerSSM_Policy",
      name = "bah_secretsmanagerssm_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_Strata_IAC",
      name = "bah_strata_iac"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_User_Policy_Boundary",
      name = "bah_user_policy_boundary"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/CloudCheckr_Policy",
      name = "cloudcheckr_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/CodeBuildBasePolicy-strata-serverless-pipeline-us-east-1",
      name = "codebuildbasepolicy_strata_serverless_pipeline_us_east_1"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/CodeBuildBasePolicy-strata-test-us-east-1",
      name = "codebuildbasepolicy_strata_test_us_east_1"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/CodeBuildS3ReadOnlyPolicy-strata-test-us-east-1",
      name = "codebuilds3readonlypolicy_strata_test_us_east_1"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Deny_Default_VPC",
      name = "deny_default_vpc"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dev_additional_services",
      name = "dev_additional_services"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dev_passrole",
      name = "dev_passrole"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dev_s3_policy",
      name = "dev_s3_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/diode-sqs-lamba-policy",
      name = "diode_sqs_lamba_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/diode-transfers-lambda-policy",
      name = "diode_transfers_lambda_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Diode_S3_Policy",
      name = "diode_s3_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Diode_UserAccess",
      name = "diode_useraccess"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dlm-lifecycle-policy",
      name = "dlm_lifecycle_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/EC2_policy",
      name = "ec2_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Future_DEV_VPC_Instance_Manager",
      name = "future_dev_vpc_instance_manager"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/I2PServicePolicy",
      name = "i2pservicepolicy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/InstanceSchedulerKMSAccess",
      name = "instanceschedulerkmsaccess"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/KMS_Policy",
      name = "kms_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/kms_sops_policy",
      name = "kms_sops_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/kubernetes-controlplane_policy",
      name = "kubernetes_controlplane_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_Deploys_Management_Policy",
      name = "lcmp_deploys_management_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_Instance_Management_Policy",
      name = "lcmp_instance_management_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_Patching_Policy",
      name = "lcmp_patching_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_S3_Sync_Artifacts_Policy",
      name = "lcmp_s3_sync_artifacts_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_Snapshot_Management_Policy",
      name = "lcmp_snapshot_management_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_SQLBackups_Management_Policy",
      name = "lcmp_sqlbackups_management_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_Tools_Management_Policy",
      name = "lcmp_tools_management_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/LCMP_UptimeMonitor_Management_Policy",
      name = "lcmp_uptimemonitor_management_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/passrole",
      name = "passrole"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/pecr_policy",
      name = "pecr_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/RotateCredsPerms",
      name = "rotatecredsperms"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/s3_bucket_policy_tools_svc_gov",
      name = "s3_bucket_policy_tools_svc_gov"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/sagemaker-notebook-instance-policy",
      name = "sagemaker_notebook_instance_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SageMakerS3BucketPolicyTemplate_1724875893688",
      name = "sagemakers3bucketpolicytemplate_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/scheduler-permissions",
      name = "scheduler_permissions"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Sec_Stack_Policy",
      name = "sec_stack_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Sec_Stack_Policy_Deny",
      name = "sec_stack_policy_deny"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Sec_Stack_Policy_EIP_Enabled",
      name = "sec_stack_policy_eip_enabled"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Sec_Stack_Policy_EIP_Enabled_Deny",
      name = "sec_stack_policy_eip_enabled_deny"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Sec_Stack_Policy_Non_VCD",
      name = "sec_stack_policy_non_vcd"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/Sec_Stack_Policy_Non_VCD_Deny",
      name = "sec_stack_policy_non_vcd_deny"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-lcmp-awsdev-dev",
      name = "service_lcmp_awsdev_dev"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/SigmaSil_IAM_Passrole",
      name = "sigmasil_iam_passrole"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SM_CommonJobManagement_1724875893688",
      name = "sm_commonjobmanagement_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SM_MLflowManagement_1724875893688",
      name = "sm_mlflowmanagement_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SM_MLflowServerAccess_1724875893688",
      name = "sm_mlflowserveraccess_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SM_MLflowTrackingExecutionRole_1724875893688",
      name = "sm_mlflowtrackingexecutionrole_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SM_ModelManagement_1724875893688",
      name = "sm_modelmanagement_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/service-role/SM_StudioAppPermissions_1724875893688",
      name = "sm_studioapppermissions_1724875893688"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/SSM_SessionManager_Policy",
      name = "ssm_sessionmanager_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-cis-efs-csi-policy",
      name = "strata_cis_efs_csi_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-cis-k8s-policy",
      name = "strata_cis_k8s_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-efs-csi-policy",
      name = "strata_dev_efs_csi_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-eks-policy",
      name = "strata_dev_eks_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-iac-policy",
      name = "strata_dev_iac_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-k8s-policy",
      name = "strata_dev_k8s_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-pipeline-agent-policy",
      name = "strata_dev_pipeline_agent_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-s3-sync-policy",
      name = "strata_dev_s3_sync_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-sagemaker-service-policy",
      name = "strata_dev_sagemaker_service_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-vault-aws-auth-policy",
      name = "strata_dev_vault_aws_auth_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-dev-vault-unseal-policy",
      name = "strata_dev_vault_unseal_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-iac-policy",
      name = "strata_iac_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-k8s-policy",
      name = "strata_k8s_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-pipeline-agent-policy",
      name = "strata_pipeline_agent_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-53wg-docworkflow-policy",
      name = "strata_proto_53wg_docworkflow_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-53wg-schedules-policy",
      name = "strata_proto_53wg_schedules_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-aws-alb-controller-policy",
      name = "strata_proto_aws_alb_controller_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-bah-strata-ka-policy",
      name = "strata_proto_bah_strata_ka_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-assimilator-b52-policy",
      name = "strata_proto_baseline_af1067_assimilator_b52_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-assimilator-e4b-policy",
      name = "strata_proto_baseline_af1067_assimilator_e4b_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-policy",
      name = "strata_proto_baseline_af1067_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-sync-service-policy",
      name = "strata_proto_baseline_af1067_sync_service_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-api-merger-policy",
      name = "strata_proto_baseline_api_merger_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-docworkflow-policy",
      name = "strata_proto_baseline_docworkflow_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-imsr-assimilator-rio-policy",
      name = "strata_proto_baseline_imsr_assimilator_rio_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-imsr-policy",
      name = "strata_proto_baseline_imsr_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-imsr-sync-service-policy",
      name = "strata_proto_baseline_imsr_sync_service_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-manpower-policy",
      name = "strata_proto_baseline_manpower_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-program-policy",
      name = "strata_proto_baseline_program_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-quickview-policy",
      name = "strata_proto_baseline_quickview_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-rio-policy",
      name = "strata_proto_baseline_rio_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-schedules-policy",
      name = "strata_proto_baseline_schedules_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-strata-ka-api-policy",
      name = "strata_proto_baseline_strata_ka_api_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-strata-shell-policy",
      name = "strata_proto_baseline_strata_shell_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-baseline-taskermgmt-policy",
      name = "strata_proto_baseline_taskermgmt_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-dms-policy",
      name = "strata_proto_dms_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-efs-csi-policy",
      name = "strata_proto_efs_csi_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-eks-cluster-autoscaler-policy",
      name = "strata_proto_eks_cluster_autoscaler_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-eks-policy",
      name = "strata_proto_eks_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-eks-worker-policy",
      name = "strata_proto_eks_worker_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-assimilator-b52-policy",
      name = "strata_proto_globalstrike_af1067_assimilator_b52_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-assimilator-e4b-policy",
      name = "strata_proto_globalstrike_af1067_assimilator_e4b_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-policy",
      name = "strata_proto_globalstrike_af1067_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-sync-service-policy",
      name = "strata_proto_globalstrike_af1067_sync_service_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-globalstrike-api-merger-policy",
      name = "strata_proto_globalstrike_api_merger_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-globalstrike-strata-shell-policy",
      name = "strata_proto_globalstrike_strata_shell_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-glue-policy",
      name = "strata_proto_glue_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-iac-policy",
      name = "strata_proto_iac_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-image-builder-policy",
      name = "strata_proto_image_builder_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-k8s-policy",
      name = "strata_proto_k8s_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-kc46-api-merger-policy",
      name = "strata_proto_kc46_api_merger_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-kc46-strata-ka-api-policy",
      name = "strata_proto_kc46_strata_ka_api_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-kc46-strata-shell-policy",
      name = "strata_proto_kc46_strata_shell_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-lambda-ad-rotate-policy",
      name = "strata_proto_lambda_ad_rotate_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-lambda-create-ad-user-policy",
      name = "strata_proto_lambda_create_ad_user_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-lambda-k8s-policy",
      name = "strata_proto_lambda_k8s_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-lambda-scan-policy",
      name = "strata_proto_lambda_scan_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-lambda-trigger-ssm-policy",
      name = "strata_proto_lambda_trigger_ssm_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-lambda-vector-embed-policy",
      name = "strata_proto_lambda_vector_embed_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-password-rotate",
      name = "strata_proto_password_rotate"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-pipeline-agent-policy",
      name = "strata_proto_pipeline_agent_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-power-bi-policy",
      name = "strata_proto_power_bi_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-s3-sync-policy",
      name = "strata_proto_s3_sync_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-scow-api-merger-policy",
      name = "strata_proto_scow_api_merger_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-scow-imsr-assimilator-rio-policy",
      name = "strata_proto_scow_imsr_assimilator_rio_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-scow-imsr-policy",
      name = "strata_proto_scow_imsr_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-scow-imsr-sync-service-policy",
      name = "strata_proto_scow_imsr_sync_service_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-scow-strata-shell-policy",
      name = "strata_proto_scow_strata_shell_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-sql-backups-policy",
      name = "strata_proto_sql_backups_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-account-policy",
      name = "strata_proto_strata_account_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-admin-control-policy",
      name = "strata_proto_strata_admin_control_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-admincontrol-policy",
      name = "strata_proto_strata_admincontrol_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-apimerger-policy",
      name = "strata_proto_strata_apimerger_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-fileserve-policy",
      name = "strata_proto_strata_fileserve_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-strata-cdn-policy",
      name = "strata_proto_strata_strata_cdn_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-strata-connect-api-policy",
      name = "strata_proto_strata_strata_connect_api_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-strata-connect-ui-policy",
      name = "strata_proto_strata_strata_connect_ui_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-strata-ka-policy",
      name = "strata_proto_strata_strata_ka_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-strata-usercontrol-policy",
      name = "strata_proto_strata_usercontrol_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-proto-zarf-ecr-credential-helper-policy",
      name = "strata_proto_zarf_ecr_credential_helper_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-secret-policy",
      name = "strata_secret_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-sql-backups-policy",
      name = "strata_sql_backups_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-efs-csi-policy",
      name = "strata_stage_efs_csi_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-iac-policy",
      name = "strata_stage_iac_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-k8s-policy",
      name = "strata_stage_k8s_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-lambda-deployment-policy",
      name = "strata_stage_lambda_deployment_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-lambda-sync-policy",
      name = "strata_stage_lambda_sync_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-s3-sync-policy",
      name = "strata_stage_s3_sync_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-stage-vault-unseal-policy",
      name = "strata_stage_vault_unseal_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-test-secretsmanager-policy",
      name = "strata_test_secretsmanager_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata-vault-unseal-policy",
      name = "strata_vault_unseal_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/strata_iac_policy",
      name = "strata_iac_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/STSAPIServiceAccount",
      name = "stsapiserviceaccount"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/tfsuser_policy",
      name = "tfsuser_policy"
    },
  ]
}
