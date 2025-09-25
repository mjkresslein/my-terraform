locals {
  iam_roles = [
    {
      id   = "ADOBuildTriggerLambdaRole",
      name = "adobuildtriggerlambdarole"
    },
    {
      id   = "AmazonEC2ContainerServiceforEC2Role",
      name = "amazonec2containerserviceforec2role"
    },
    {
      id   = "AmazonEKSPodIdentity",
      name = "amazonekspodidentity"
    },
    {
      id   = "api-merger",
      name = "api_merger"
    },
    {
      id   = "Appstream_cameo_SSO",
      name = "appstream_cameo_sso"
    },
    {
      id   = "AppStream_SSO",
      name = "appstream_sso"
    },
    {
      id   = "aws-load-balancer-controller",
      name = "aws_load_balancer_controller"
    },
    {
      id   = "AWSBackupAndRestoreRole",
      name = "awsbackupandrestorerole"
    },
    {
      id   = "AWSCodeDeployRoleForECS",
      name = "awscodedeployroleforecs"
    },
    {
      id   = "AWSRoleForEKS",
      name = "awsroleforeks"
    },
    {
      id   = "BAH-dev-kion-service-role",
      name = "bah_dev_kion_service_role"
    },
    {
      id   = "BAH-event-driven-custodian-role",
      name = "bah_event_driven_custodian_role"
    },
    {
      id   = "BAH-kion-service-role",
      name = "bah_kion_service_role"
    },
    {
      id   = "BAHCrossAccount_Admin_Role",
      name = "bahcrossaccount_admin_role"
    },
    {
      id   = "BAHCrossAccount_Automation_Role",
      name = "bahcrossaccount_automation_role"
    },
    {
      id   = "BAHCrossAccount_CloudInfrastructure_Role",
      name = "bahcrossaccount_cloudinfrastructure_role"
    },
    {
      id   = "BAHCrossAccount_ReadOnly_Role",
      name = "bahcrossaccount_readonly_role"
    },
    {
      id   = "BAHCrossAccount_ServiceNow_Role",
      name = "bahcrossaccount_servicenow_role"
    },
    {
      id   = "BAHOrgRole",
      name = "bahorgrole"
    },
    {
      id   = "BAHSplunkRole",
      name = "bahsplunkrole"
    },
    {
      id   = "BAHSSO_Admin_Role",
      name = "bahsso_admin_role"
    },
    {
      id   = "BAHSSO_APIGateway_Role",
      name = "bahsso_apigateway_role"
    },
    {
      id   = "BAHSSO_Dev_Role",
      name = "bahsso_dev_role"
    },
    {
      id   = "BAHSSO_SuperUser_Role",
      name = "bahsso_superuser_role"
    },
    {
      id   = "BAHTenableCSPMv2",
      name = "bahtenablecspmv2"
    },
    {
      id   = "BAHVPCFlowLogsRole",
      name = "bahvpcflowlogsrole"
    },
    {
      id   = "BAH_EventBus_Role",
      name = "bah_eventbus_role"
    },
    {
      id   = "BAH_RedCanary_Role",
      name = "bah_redcanary_role"
    },
    {
      id   = "BAH_Strata_IAC_Instance_Role",
      name = "bah_strata_iac_instance_role"
    },
    {
      id   = "CodePipelineServiceRole",
      name = "codepipelineservicerole"
    },
    {
      id   = "ContainerReadWriteS3Role",
      name = "containerreadwrites3role"
    },
    {
      id   = "derrick-delete",
      name = "derrick_delete"
    },
    {
      id   = "diode-lambda-role",
      name = "diode_lambda_role"
    },
    {
      id   = "Diode_Transfer_Role",
      name = "diode_transfer_role"
    },
    {
      id   = "DLM-Snapshot_Role",
      name = "dlm_snapshot_role"
    },
    {
      id   = "ebs-snapshot-lifecycle-role",
      name = "ebs_snapshot_lifecycle_role"
    },
    {
      id   = "EC2InstanceProfileForImageBuilder",
      name = "ec2instanceprofileforimagebuilder"
    },
    {
      id   = "ECR_ECS_role",
      name = "ecr_ecs_role"
    },
    {
      id   = "ecsAnywhereRole",
      name = "ecsanywhererole"
    },
    {
      id   = "ecsTaskExecutionRole",
      name = "ecstaskexecutionrole"
    },
    {
      id   = "EKSNodeInstanceRole",
      name = "eksnodeinstancerole"
    },
    {
      id   = "EMR_DefaultRole",
      name = "emr_defaultrole"
    },
    {
      id   = "EMR_EC2_DefaultRole",
      name = "emr_ec2_defaultrole"
    },
    {
      id   = "flowlogsRole",
      name = "flowlogsrole"
    },
    {
      id   = "I2PServerRole",
      name = "i2pserverrole"
    },
    {
      id   = "instance-scheduler",
      name = "instance_scheduler"
    },
    {
      id   = "kubernetes-controlplane",
      name = "kubernetes_controlplane"
    },
    {
      id   = "kubernetes-worker",
      name = "kubernetes_worker"
    },
    {
      id   = "LambdaStartContainerRole",
      name = "lambdastartcontainerrole"
    },
    {
      id   = "lambda_basic_execution",
      name = "lambda_basic_execution"
    },
    {
      id   = "lambda_ec2_role",
      name = "lambda_ec2_role"
    },
    {
      id   = "LCMP-Hyperglance-Dev-Role",
      name = "lcmp_hyperglance_dev_role"
    },
    {
      id   = "LCMP_AD_Server_Role",
      name = "lcmp_ad_server_role"
    },
    {
      id   = "LCMP_Application_Role",
      name = "lcmp_application_role"
    },
    {
      id   = "LCMP_Build_Server_Role",
      name = "lcmp_build_server_role"
    },
    {
      id   = "LCMP_Cross_Account_Ops_Role",
      name = "lcmp_cross_account_ops_role"
    },
    {
      id   = "LCMP_CR_Server_Role",
      name = "lcmp_cr_server_role"
    },
    {
      id   = "LCMP_Database_Server_Role",
      name = "lcmp_database_server_role"
    },
    {
      id   = "LCMP_Email_Server_Role",
      name = "lcmp_email_server_role"
    },
    {
      id   = "LCMP_F5_Server_Role",
      name = "lcmp_f5_server_role"
    },
    {
      id   = "LCMP_Management_Server_Role",
      name = "lcmp_management_server_role"
    },
    {
      id   = "LCMP_NAT_Server_Role",
      name = "lcmp_nat_server_role"
    },
    {
      id   = "LCMP_Patching_Role",
      name = "lcmp_patching_role"
    },
    {
      id   = "LCMP_Splunk_Server_Role",
      name = "lcmp_splunk_server_role"
    },
    {
      id   = "LCMP_StagConnect_Role",
      name = "lcmp_stagconnect_role"
    },
    {
      id   = "LCMP_WSP_Server_Role",
      name = "lcmp_wsp_server_role"
    },
    {
      id   = "LCMP_WSUS_Server_Role",
      name = "lcmp_wsus_server_role"
    },
    {
      id   = "MAAPSageMakerExecutionRole",
      name = "maapsagemakerexecutionrole"
    },
    {
      id   = "OpenVPNRole",
      name = "openvpnrole"
    },
    {
      id   = "PECOK-ML-Analyst-Role",
      name = "pecok_ml_analyst_role"
    },
    {
      id   = "PECOK-ML-Developer-Role",
      name = "pecok_ml_developer_role"
    },
    {
      id   = "PowerUser",
      name = "poweruser"
    },
    {
      id   = "rds-directoryservice-kerberos-access-role",
      name = "rds_directoryservice_kerberos_access_role"
    },
    {
      id   = "rds-monitoring-role",
      name = "rds_monitoring_role"
    },
    {
      id   = "rio",
      name = "rio"
    },
    {
      id   = "S3AnalyticsAccess",
      name = "s3analyticsaccess"
    },
    {
      id   = "SageMakerExecutionRole",
      name = "sagemakerexecutionrole"
    },
    {
      id   = "SamlAdmin",
      name = "samladmin"
    },
    {
      id   = "SamlDeveloper",
      name = "samldeveloper"
    },
    {
      id   = "SMM_EC2_ROLE",
      name = "smm_ec2_role"
    },
    {
      id   = "stacksets-exec-fad3274a13b809f501cc2f560cfb7fab",
      name = "stacksets_exec_fad3274a13b809f501cc2f560cfb7fab"
    },
    {
      id   = "strata-cis-k8s-instance-role",
      name = "strata_cis_k8s_instance_role"
    },
    {
      id   = "strata-k8s-instance-role",
      name = "strata_k8s_instance_role"
    },
    {
      id   = "strata-lambda-vpncert-renew-role",
      name = "strata_lambda_vpncert_renew_role"
    },
    {
      id   = "strata-pipeline-agent-role",
      name = "strata_pipeline_agent_role"
    },
    {
      id   = "strata-proto-53wg-docworkflow-role",
      name = "strata_proto_53wg_docworkflow_role"
    },
    {
      id   = "strata-proto-53wg-schedules-role",
      name = "strata_proto_53wg_schedules_role"
    },
    {
      id   = "strata-proto-aws-load-balancer-controller-role",
      name = "strata_proto_aws_load_balancer_controller_role"
    },
    {
      id   = "strata-proto-bah-api-merger",
      name = "strata_proto_bah_api_merger"
    },
    {
      id   = "strata-proto-bah-docworkflow",
      name = "strata_proto_bah_docworkflow"
    },
    {
      id   = "strata-proto-bah-manpower",
      name = "strata_proto_bah_manpower"
    },
    {
      id   = "strata-proto-bah-program",
      name = "strata_proto_bah_program"
    },
    {
      id   = "strata-proto-bah-quickview",
      name = "strata_proto_bah_quickview"
    },
    {
      id   = "strata-proto-bah-rio",
      name = "strata_proto_bah_rio"
    },
    {
      id   = "strata-proto-bah-schedules",
      name = "strata_proto_bah_schedules"
    },
    {
      id   = "strata-proto-baseline-af1067-assimilator-b52-role",
      name = "strata_proto_baseline_af1067_assimilator_b52_role"
    },
    {
      id   = "strata-proto-baseline-af1067-assimilator-e4b-role",
      name = "strata_proto_baseline_af1067_assimilator_e4b_role"
    },
    {
      id   = "strata-proto-baseline-af1067-role",
      name = "strata_proto_baseline_af1067_role"
    },
    {
      id   = "strata-proto-baseline-af1067-sync-service-role",
      name = "strata_proto_baseline_af1067_sync_service_role"
    },
    {
      id   = "strata-proto-baseline-api-merger",
      name = "strata_proto_baseline_api_merger"
    },
    {
      id   = "strata-proto-baseline-api-merger-role",
      name = "strata_proto_baseline_api_merger_role"
    },
    {
      id   = "strata-proto-baseline-docworkflow",
      name = "strata_proto_baseline_docworkflow"
    },
    {
      id   = "strata-proto-baseline-docworkflow-role",
      name = "strata_proto_baseline_docworkflow_role"
    },
    {
      id   = "strata-proto-baseline-imsr-assimilator-rio-role",
      name = "strata_proto_baseline_imsr_assimilator_rio_role"
    },
    {
      id   = "strata-proto-baseline-imsr-role",
      name = "strata_proto_baseline_imsr_role"
    },
    {
      id   = "strata-proto-baseline-imsr-sync-service-role",
      name = "strata_proto_baseline_imsr_sync_service_role"
    },
    {
      id   = "strata-proto-baseline-manpower",
      name = "strata_proto_baseline_manpower"
    },
    {
      id   = "strata-proto-baseline-manpower-role",
      name = "strata_proto_baseline_manpower_role"
    },
    {
      id   = "strata-proto-baseline-program",
      name = "strata_proto_baseline_program"
    },
    {
      id   = "strata-proto-baseline-program-role",
      name = "strata_proto_baseline_program_role"
    },
    {
      id   = "strata-proto-baseline-quickview",
      name = "strata_proto_baseline_quickview"
    },
    {
      id   = "strata-proto-baseline-quickview-role",
      name = "strata_proto_baseline_quickview_role"
    },
    {
      id   = "strata-proto-baseline-rio",
      name = "strata_proto_baseline_rio"
    },
    {
      id   = "strata-proto-baseline-rio-role",
      name = "strata_proto_baseline_rio_role"
    },
    {
      id   = "strata-proto-baseline-schedules",
      name = "strata_proto_baseline_schedules"
    },
    {
      id   = "strata-proto-baseline-schedules-role",
      name = "strata_proto_baseline_schedules_role"
    },
    {
      id   = "strata-proto-baseline-strata-ka-api-role",
      name = "strata_proto_baseline_strata_ka_api_role"
    },
    {
      id   = "strata-proto-baseline-strata-shell-role",
      name = "strata_proto_baseline_strata_shell_role"
    },
    {
      id   = "strata-proto-baseline-taskermgmt-role",
      name = "strata_proto_baseline_taskermgmt_role"
    },
    {
      id   = "strata-proto-cis-efs-driver-role",
      name = "strata_proto_cis_efs_driver_role"
    },
    {
      id   = "strata-proto-cis-s3-driver-role",
      name = "strata_proto_cis_s3_driver_role"
    },
    {
      id   = "strata-proto-cluster-autoscaler-role",
      name = "strata_proto_cluster_autoscaler_role"
    },
    {
      id   = "strata-proto-dms-role",
      name = "strata_proto_dms_role"
    },
    {
      id   = "strata-proto-eks-role",
      name = "strata_proto_eks_role"
    },
    {
      id   = "strata-proto-eks-worker-role",
      name = "strata_proto_eks_worker_role"
    },
    {
      id   = "strata-proto-globalstrike-af1067-assimilator-b52-role",
      name = "strata_proto_globalstrike_af1067_assimilator_b52_role"
    },
    {
      id   = "strata-proto-globalstrike-af1067-assimilator-e4b-role",
      name = "strata_proto_globalstrike_af1067_assimilator_e4b_role"
    },
    {
      id   = "strata-proto-globalstrike-af1067-role",
      name = "strata_proto_globalstrike_af1067_role"
    },
    {
      id   = "strata-proto-globalstrike-af1067-sync-service-role",
      name = "strata_proto_globalstrike_af1067_sync_service_role"
    },
    {
      id   = "strata-proto-globalstrike-api-merger-role",
      name = "strata_proto_globalstrike_api_merger_role"
    },
    {
      id   = "strata-proto-globalstrike-strata-shell-role",
      name = "strata_proto_globalstrike_strata_shell_role"
    },
    {
      id   = "strata-proto-glue-role",
      name = "strata_proto_glue_role"
    },
    {
      id   = "strata-proto-image-builder-role",
      name = "strata_proto_image_builder_role"
    },
    {
      id   = "strata-proto-k8s-instance-role",
      name = "strata_proto_k8s_instance_role"
    },
    {
      id   = "strata-proto-kc46-api-merger-role",
      name = "strata_proto_kc46_api_merger_role"
    },
    {
      id   = "strata-proto-kc46-strata-ka-api-role",
      name = "strata_proto_kc46_strata_ka_api_role"
    },
    {
      id   = "strata-proto-kc46-strata-shell-role",
      name = "strata_proto_kc46_strata_shell_role"
    },
    {
      id   = "strata-proto-kube-system-aws-load-balancer-controller",
      name = "strata_proto_kube_system_aws_load_balancer_controller"
    },
    {
      id   = "strata-proto-kube-system-aws-node",
      name = "strata_proto_kube_system_aws_node"
    },
    {
      id   = "strata-proto-lambda-ad-rotate-role",
      name = "strata_proto_lambda_ad_rotate_role"
    },
    {
      id   = "strata-proto-lambda-create-ad-user-role",
      name = "strata_proto_lambda_create_ad_user_role"
    },
    {
      id   = "strata-proto-lambda-k8s-role",
      name = "strata_proto_lambda_k8s_role"
    },
    {
      id   = "strata-proto-lambda-scan-role",
      name = "strata_proto_lambda_scan_role"
    },
    {
      id   = "strata-proto-lambda-trigger-ssm-role",
      name = "strata_proto_lambda_trigger_ssm_role"
    },
    {
      id   = "strata-proto-lambda-vector-embed-role",
      name = "strata_proto_lambda_vector_embed_role"
    },
    {
      id   = "strata-proto-pipeline-agent-role",
      name = "strata_proto_pipeline_agent_role"
    },
    {
      id   = "strata-proto-power-bi-role",
      name = "strata_proto_power_bi_role"
    },
    {
      id   = "strata-proto-prometheus-grafana-role",
      name = "strata_proto_prometheus_grafana_role"
    },
    {
      id   = "strata-proto-sagemaker-execution-role",
      name = "strata_proto_sagemaker_execution_role"
    },
    {
      id   = "strata-proto-scow-api-merger-role",
      name = "strata_proto_scow_api_merger_role"
    },
    {
      id   = "strata-proto-scow-imsr-assimilator-rio-role",
      name = "strata_proto_scow_imsr_assimilator_rio_role"
    },
    {
      id   = "strata-proto-scow-imsr-role",
      name = "strata_proto_scow_imsr_role"
    },
    {
      id   = "strata-proto-scow-imsr-sync-service-role",
      name = "strata_proto_scow_imsr_sync_service_role"
    },
    {
      id   = "strata-proto-scow-strata-shell-role",
      name = "strata_proto_scow_strata_shell_role"
    },
    {
      id   = "strata-proto-strata-account",
      name = "strata_proto_strata_account"
    },
    {
      id   = "strata-proto-strata-account-role",
      name = "strata_proto_strata_account_role"
    },
    {
      id   = "strata-proto-strata-admin-control-role",
      name = "strata_proto_strata_admin_control_role"
    },
    {
      id   = "strata-proto-strata-admincontrol-role",
      name = "strata_proto_strata_admincontrol_role"
    },
    {
      id   = "strata-proto-strata-api-merger-role",
      name = "strata_proto_strata_api_merger_role"
    },
    {
      id   = "strata-proto-strata-fileserve-role",
      name = "strata_proto_strata_fileserve_role"
    },
    {
      id   = "strata-proto-strata-strata-cdn-role",
      name = "strata_proto_strata_strata_cdn_role"
    },
    {
      id   = "strata-proto-strata-strata-connect-api-role",
      name = "strata_proto_strata_strata_connect_api_role"
    },
    {
      id   = "strata-proto-strata-strata-connect-ui-role",
      name = "strata_proto_strata_strata_connect_ui_role"
    },
    {
      id   = "strata-proto-strata-user-control",
      name = "strata_proto_strata_user_control"
    },
    {
      id   = "strata-proto-strata-user-control-role",
      name = "strata_proto_strata_user_control_role"
    },
    {
      id   = "strata-proto-utility-role",
      name = "strata_proto_utility_role"
    },
    {
      id   = "strata-proto-utility-server-role",
      name = "strata_proto_utility_server_role"
    },
    {
      id   = "strata-proto-vpc-cni-role",
      name = "strata_proto_vpc_cni_role"
    },
    {
      id   = "strata-proto-zarf-ecr-credential-helper-role",
      name = "strata_proto_zarf_ecr_credential_helper_role"
    },
    {
      id   = "strata-sagemaker-role",
      name = "strata_sagemaker_role"
    },
    {
      id   = "strata-stage-event-bridge-trigger-role",
      name = "strata_stage_event_bridge_trigger_role"
    },
    {
      id   = "strata-stage-k8s-instance-role",
      name = "strata_stage_k8s_instance_role"
    },
    {
      id   = "strata-stage-lambda-deployment-role",
      name = "strata_stage_lambda_deployment_role"
    },
    {
      id   = "strata-stage-lambda-sync-role",
      name = "strata_stage_lambda_sync_role"
    },
    {
      id   = "strata-stage-utility-role",
      name = "strata_stage_utility_role"
    },
    {
      id   = "strata-stage-vault-unseal-role",
      name = "strata_stage_vault_unseal_role"
    },
    {
      id   = "strata-test-pipeline-agent-role",
      name = "strata_test_pipeline_agent_role"
    },
    {
      id   = "strata-test-utility-role",
      name = "strata_test_utility_role"
    },
    {
      id   = "strata-utility-role",
      name = "strata_utility_role"
    },
    {
      id   = "strata-vault-unseal-role",
      name = "strata_vault_unseal_role"
    },
    {
      id   = "StrataLambdaPipelineRole",
      name = "stratalambdapipelinerole"
    },
    {
      id   = "VaultKMSUnsealRole",
      name = "vaultkmsunsealrole"
    },
    {
      id   = "vmimport",
      name = "vmimport"
    },
    {
      id   = "zarf-aws",
      name = "zarf_aws"
    },
  ]
}
