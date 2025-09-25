locals {
  iam_role_policy_attachments = [
    {
      id   = "AmazonEC2ContainerServiceforEC2Role/arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
      name = "amazonec2containerserviceforec2role"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
      name = "amazonec2roleforssm"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      name = "amazoneks_cni_policy"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
      name = "amazonec2containerregistryreadonly"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
      name = "amazoneksworkernodepolicy"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly",
      name = "amazonec2containerregistrypullonly"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy",
      name = "amazonebscsidriverpolicy"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::aws:policy/service-role/AmazonEFSCSIDriverPolicy",
      name = "amazonefscsidriverpolicy"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::947132430921:policy/strata-proto-eks-worker-policy",
      name = "strata_proto_eks_worker_policy"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::947132430921:policy/strata-proto-eks-cluster-autoscaler-policy",
      name = "strata_proto_eks_cluster_autoscaler_policy"
    },
    {
      id   = "AmazonEKSPodIdentity/arn:aws:iam::947132430921:policy/strata-proto-aws-alb-controller-policy",
      name = "strata_proto_aws_alb_controller_policy"
    },
    {
      id   = "AWSBackupAndRestoreRole/arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores",
      name = "awsbackupservicerolepolicyforrestores"
    },
    {
      id   = "AWSBackupAndRestoreRole/arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup",
      name = "awsbackupservicerolepolicyforbackup"
    },
    {
      id   = "AWSCodeDeployRoleForECS/arn:aws:iam::aws:policy/AmazonElasticFileSystemFullAccess",
      name = "amazonelasticfilesystemfullaccess"
    },
    {
      id   = "AWSCodeDeployRoleForECS/arn:aws:iam::aws:policy/AWSCodeDeployRoleForECS",
      name = "awscodedeployroleforecs"
    },
    {
      id   = "AWSRoleForEKS/arn:aws:iam::aws:policy/AmazonRoute53FullAccess",
      name = "amazonroute53fullaccess"
    },
    {
      id   = "AWSRoleForEKS/arn:aws:iam::aws:policy/AmazonEKSServicePolicy",
      name = "amazoneksservicepolicy"
    },
    {
      id   = "BAH-dev-kion-service-role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAH-event-driven-custodian-role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAH-event-driven-custodian-role/arn:aws:iam::947132430921:policy/BAH-event-driven-custodian-role",
      name = "bah_event_driven_custodian_role"
    },
    {
      id   = "BAH-kion-service-role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAH-kion-service-role/arn:aws:iam::947132430921:policy/BAH_Kion_Lambda_Policy",
      name = "bah_kion_lambda_policy"
    },
    {
      id   = "BAH-kion-service-role/arn:aws:iam::947132430921:policy/BAH-kion-service-role-policy",
      name = "bah_kion_service_role_policy"
    },
    {
      id   = "BAHCrossAccount_Admin_Role/arn:aws:iam::aws:policy/AdministratorAccess",
      name = "administratoraccess"
    },
    {
      id   = "BAHCrossAccount_Automation_Role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAHCrossAccount_CloudInfrastructure_Role/arn:aws:iam::aws:policy/AdministratorAccess",
      name = "administratoraccess"
    },
    {
      id   = "BAHCrossAccount_ReadOnly_Role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAHCrossAccount_ServiceNow_Role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAHSplunkRole/arn:aws:iam::947132430921:policy/BAHSplunkPolicy",
      name = "bahsplunkpolicy"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::aws:policy/AmazonSSMFullAccess",
      name = "amazonssmfullaccess"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::aws:policy/AWSCodeCommitFullAccess",
      name = "awscodecommitfullaccess"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::aws:policy/AmazonElastiCacheFullAccess",
      name = "amazonelasticachefullaccess"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::aws:policy/service-role/AmazonSSMMaintenanceWindowRole",
      name = "amazonssmmaintenancewindowrole"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/Sec_Stack_Policy_EIP_Enabled_Deny",
      name = "sec_stack_policy_eip_enabled_deny"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/KMS_Policy",
      name = "kms_policy"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/BAH_API_Gateway_Policy",
      name = "bah_api_gateway_policy"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/Sec_Stack_Policy_EIP_Enabled",
      name = "sec_stack_policy_eip_enabled"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/BAHSSO_Admin_AdditionalPermissions",
      name = "bahsso_admin_additionalpermissions"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/BAH_DLM",
      name = "bah_dlm"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/SigmaSil_IAM_Passrole",
      name = "sigmasil_iam_passrole"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/BAH_PassRole_Policy",
      name = "bah_passrole_policy"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/BAH_Route53Domains_Full_Access_policy",
      name = "bah_route53domains_full_access_policy"
    },
    {
      id   = "BAHSSO_Admin_Role/arn:aws:iam::947132430921:policy/BAH_Route53_Full_Access",
      name = "bah_route53_full_access"
    },
    {
      id   = "BAHSSO_APIGateway_Role/arn:aws:iam::947132430921:policy/BAH_API_Gateway_Policy",
      name = "bah_api_gateway_policy"
    },
    {
      id   = "BAHSSO_Dev_Role/arn:aws:iam::947132430921:policy/dev_additional_services",
      name = "dev_additional_services"
    },
    {
      id   = "BAHSSO_Dev_Role/arn:aws:iam::947132430921:policy/dev_s3_policy",
      name = "dev_s3_policy"
    },
    {
      id   = "BAHSSO_Dev_Role/arn:aws:iam::947132430921:policy/dev_passrole",
      name = "dev_passrole"
    },
    {
      id   = "BAHSSO_SuperUser_Role/arn:aws:iam::aws:policy/AdministratorAccess",
      name = "administratoraccess"
    },
    {
      id   = "BAHTenableCSPMv2/arn:aws:iam::aws:policy/SecurityAudit",
      name = "securityaudit"
    },
    {
      id   = "BAHTenableCSPMv2/arn:aws:iam::947132430921:policy/BAHTenableReadOnlyPolicy",
      name = "bahtenablereadonlypolicy"
    },
    {
      id   = "BAHTenableCSPMv2/arn:aws:iam::947132430921:policy/BAHTenableWorkloadProtectionPolicy",
      name = "bahtenableworkloadprotectionpolicy"
    },
    {
      id   = "BAH_RedCanary_Role/arn:aws:iam::aws:policy/AWSOrganizationsReadOnlyAccess",
      name = "awsorganizationsreadonlyaccess"
    },
    {
      id   = "BAH_RedCanary_Role/arn:aws:iam::aws:policy/AmazonGuardDutyReadOnlyAccess",
      name = "amazonguarddutyreadonlyaccess"
    },
    {
      id   = "BAH_RedCanary_Role/arn:aws:iam::aws:policy/ReadOnlyAccess",
      name = "readonlyaccess"
    },
    {
      id   = "BAH_RedCanary_Role/arn:aws:iam::aws:policy/AWSResourceExplorerReadOnlyAccess",
      name = "awsresourceexplorerreadonlyaccess"
    },
    {
      id   = "BAH_RedCanary_Role/arn:aws:iam::947132430921:policy/BAH_RedCanary_ListandDescribeResources",
      name = "bah_redcanary_listanddescriberesources"
    },
    {
      id   = "BAH_Strata_IAC_Instance_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "BAH_Strata_IAC_Instance_Role/arn:aws:iam::947132430921:policy/strata_iac_policy",
      name = "strata_iac_policy"
    },
    {
      id   = "CodePipelineServiceRole/arn:aws:iam::aws:policy/AWSCodePipeline_FullAccess",
      name = "awscodepipeline_fullaccess"
    },
    {
      id   = "ContainerReadWriteS3Role/arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
      name = "cloudwatchlogsfullaccess"
    },
    {
      id   = "ContainerReadWriteS3Role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "derrick-delete/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "diode-lambda-role/arn:aws:iam::947132430921:policy/diode-transfers-lambda-policy",
      name = "diode_transfers_lambda_policy"
    },
    {
      id   = "diode-lambda-role/arn:aws:iam::947132430921:policy/diode-sqs-lamba-policy",
      name = "diode_sqs_lamba_policy"
    },
    {
      id   = "Diode_Transfer_Role/arn:aws:iam::947132430921:policy/Diode_S3_Policy",
      name = "diode_s3_policy"
    },
    {
      id   = "DLM-Snapshot_Role/arn:aws:iam::aws:policy/service-role/AWSDataLifecycleManagerServiceRole",
      name = "awsdatalifecyclemanagerservicerole"
    },
    {
      id   = "ebs-snapshot-lifecycle-role/arn:aws:iam::947132430921:policy/dlm-lifecycle-policy",
      name = "dlm_lifecycle_policy"
    },
    {
      id   = "EC2InstanceProfileForImageBuilder/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "EC2InstanceProfileForImageBuilder/arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilder",
      name = "ec2instanceprofileforimagebuilder"
    },
    {
      id   = "EC2InstanceProfileForImageBuilder/arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilderECRContainerBuilds",
      name = "ec2instanceprofileforimagebuilderecrcontainerbuilds"
    },
    {
      id   = "ECR_ECS_role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "ECR_ECS_role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "ecsAnywhereRole/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "ecsAnywhereRole/arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
      name = "amazonec2containerserviceforec2role"
    },
    {
      id   = "ecsTaskExecutionRole/arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy",
      name = "amazonecstaskexecutionrolepolicy"
    },
    {
      id   = "ecsTaskExecutionRole/arn:aws:iam::aws:policy/AmazonElasticFileSystemFullAccess",
      name = "amazonelasticfilesystemfullaccess"
    },
    {
      id   = "ecsTaskExecutionRole/arn:aws:iam::aws:policy/AmazonECS_FullAccess",
      name = "amazonecs_fullaccess"
    },
    {
      id   = "ecsTaskExecutionRole/arn:aws:iam::947132430921:policy/BAH_SecretsManagerSSM_Policy",
      name = "bah_secretsmanagerssm_policy"
    },
    {
      id   = "EKSNodeInstanceRole/arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      name = "amazoneks_cni_policy"
    },
    {
      id   = "EKSNodeInstanceRole/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
      name = "amazonec2containerregistryreadonly"
    },
    {
      id   = "EKSNodeInstanceRole/arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
      name = "amazoneksworkernodepolicy"
    },
    {
      id   = "I2PServerRole/arn:aws:iam::947132430921:policy/I2PServicePolicy",
      name = "i2pservicepolicy"
    },
    {
      id   = "instance-scheduler/arn:aws:iam::947132430921:policy/scheduler-permissions",
      name = "scheduler_permissions"
    },
    {
      id   = "kubernetes-controlplane/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
      name = "amazonec2containerregistryfullaccess"
    },
    {
      id   = "kubernetes-controlplane/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "kubernetes-controlplane/arn:aws:iam::947132430921:policy/kubernetes-controlplane_policy",
      name = "kubernetes_controlplane_policy"
    },
    {
      id   = "kubernetes-worker/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
      name = "amazonec2containerregistryfullaccess"
    },
    {
      id   = "kubernetes-worker/arn:aws:iam::aws:policy/AmazonEC2FullAccess",
      name = "amazonec2fullaccess"
    },
    {
      id   = "kubernetes-worker/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "kubernetes-worker/arn:aws:iam::aws:policy/service-role/EC2ImageBuilderLifecycleExecutionPolicy",
      name = "ec2imagebuilderlifecycleexecutionpolicy"
    },
    {
      id   = "kubernetes-worker/arn:aws:iam::947132430921:policy/pecr_policy",
      name = "pecr_policy"
    },
    {
      id   = "LambdaStartContainerRole/arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
      name = "cloudwatchlogsfullaccess"
    },
    {
      id   = "LambdaStartContainerRole/arn:aws:iam::aws:policy/AmazonECS_FullAccess",
      name = "amazonecs_fullaccess"
    },
    {
      id   = "LambdaStartContainerRole/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
      name = "amazonec2containerregistryreadonly"
    },
    {
      id   = "LambdaStartContainerRole/arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
      name = "amazons3readonlyaccess"
    },
    {
      id   = "lambda_ec2_role/arn:aws:iam::aws:policy/AmazonEC2FullAccess",
      name = "amazonec2fullaccess"
    },
    {
      id   = "lambda_ec2_role/arn:aws:iam::aws:policy/AWSLambdaExecute",
      name = "awslambdaexecute"
    },
    {
      id   = "LCMP_AD_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Application_Role/arn:aws:iam::aws:policy/AmazonSSMFullAccess",
      name = "amazonssmfullaccess"
    },
    {
      id   = "LCMP_Application_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Build_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Build_Server_Role/arn:aws:iam::947132430921:policy/LCMP_Deploys_Management_Policy",
      name = "lcmp_deploys_management_policy"
    },
    {
      id   = "LCMP_CR_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_CR_Server_Role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "LCMP_CR_Server_Role/arn:aws:iam::947132430921:policy/KMS_Policy",
      name = "kms_policy"
    },
    {
      id   = "LCMP_CR_Server_Role/arn:aws:iam::947132430921:policy/BAH_SecretsManagerSSM_Policy",
      name = "bah_secretsmanagerssm_policy"
    },
    {
      id   = "LCMP_CR_Server_Role/arn:aws:iam::947132430921:policy/LCMP_S3_Sync_Artifacts_Policy",
      name = "lcmp_s3_sync_artifacts_policy"
    },
    {
      id   = "LCMP_Database_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Database_Server_Role/arn:aws:iam::947132430921:policy/strata-proto-sql-backups-policy",
      name = "strata_proto_sql_backups_policy"
    },
    {
      id   = "LCMP_Database_Server_Role/arn:aws:iam::947132430921:policy/strata-proto-password-rotate",
      name = "strata_proto_password_rotate"
    },
    {
      id   = "LCMP_Database_Server_Role/arn:aws:iam::947132430921:policy/strata-proto-lambda-ad-rotate-policy",
      name = "strata_proto_lambda_ad_rotate_policy"
    },
    {
      id   = "LCMP_Database_Server_Role/arn:aws:iam::947132430921:policy/LCMP_SQLBackups_Management_Policy",
      name = "lcmp_sqlbackups_management_policy"
    },
    {
      id   = "LCMP_Email_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_F5_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::aws:policy/AmazonSSMFullAccess",
      name = "amazonssmfullaccess"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/EC2_policy",
      name = "ec2_policy"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/passrole",
      name = "passrole"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/LCMP_Tools_Management_Policy",
      name = "lcmp_tools_management_policy"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/LCMP_Snapshot_Management_Policy",
      name = "lcmp_snapshot_management_policy"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/LCMP_Deploys_Management_Policy",
      name = "lcmp_deploys_management_policy"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/LCMP_UptimeMonitor_Management_Policy",
      name = "lcmp_uptimemonitor_management_policy"
    },
    {
      id   = "LCMP_Management_Server_Role/arn:aws:iam::947132430921:policy/BAH_EC2_InstanceMgmt",
      name = "bah_ec2_instancemgmt"
    },
    {
      id   = "LCMP_NAT_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_Patching_Role/arn:aws:iam::aws:policy/service-role/AmazonSSMMaintenanceWindowRole",
      name = "amazonssmmaintenancewindowrole"
    },
    {
      id   = "LCMP_Patching_Role/arn:aws:iam::947132430921:policy/LCMP_Patching_Policy",
      name = "lcmp_patching_policy"
    },
    {
      id   = "LCMP_Splunk_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_StagConnect_Role/arn:aws:iam::947132430921:policy/LCMP_Tools_Management_Policy",
      name = "lcmp_tools_management_policy"
    },
    {
      id   = "LCMP_StagConnect_Role/arn:aws:iam::947132430921:policy/LCMP_Deploys_Management_Policy",
      name = "lcmp_deploys_management_policy"
    },
    {
      id   = "LCMP_WSP_Server_Role/arn:aws:iam::aws:policy/AmazonSSMFullAccess",
      name = "amazonssmfullaccess"
    },
    {
      id   = "LCMP_WSP_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "LCMP_WSP_Server_Role/arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
      name = "amazonec2roleforssm"
    },
    {
      id   = "LCMP_WSP_Server_Role/arn:aws:iam::aws:policy/service-role/AmazonSSMMaintenanceWindowRole",
      name = "amazonssmmaintenancewindowrole"
    },
    {
      id   = "LCMP_WSUS_Server_Role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "MAAPSageMakerExecutionRole/arn:aws:iam::aws:policy/AmazonSageMakerFullAccess",
      name = "amazonsagemakerfullaccess"
    },
    {
      id   = "rds-directoryservice-kerberos-access-role/arn:aws:iam::aws:policy/service-role/AmazonRDSDirectoryServiceAccess",
      name = "amazonrdsdirectoryserviceaccess"
    },
    {
      id   = "rds-monitoring-role/arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole",
      name = "amazonrdsenhancedmonitoringrole"
    },
    {
      id   = "S3AnalyticsAccess/arn:aws:iam::947132430921:policy/BAH_S3AnalyticsAccess",
      name = "bah_s3analyticsaccess"
    },
    {
      id   = "SageMakerExecutionRole/arn:aws:iam::aws:policy/AmazonSageMakerFullAccess",
      name = "amazonsagemakerfullaccess"
    },
    {
      id   = "stacksets-exec-fad3274a13b809f501cc2f560cfb7fab/arn:aws:iam::aws:policy/AdministratorAccess",
      name = "administratoraccess"
    },
    {
      id   = "strata-cis-k8s-instance-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-cis-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-cis-k8s-policy",
      name = "strata_cis_k8s_policy"
    },
    {
      id   = "strata-cis-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-cis-efs-csi-policy",
      name = "strata_cis_efs_csi_policy"
    },
    {
      id   = "strata-k8s-instance-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-k8s-policy",
      name = "strata_k8s_policy"
    },
    {
      id   = "strata-lambda-vpncert-renew-role/arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
      name = "amazonec2roleforssm"
    },
    {
      id   = "strata-lambda-vpncert-renew-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-pipeline-agent-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-pipeline-agent-role/arn:aws:iam::947132430921:policy/strata-iac-policy",
      name = "strata_iac_policy"
    },
    {
      id   = "strata-pipeline-agent-role/arn:aws:iam::947132430921:policy/strata-pipeline-agent-policy",
      name = "strata_pipeline_agent_policy"
    },
    {
      id   = "strata-proto-53wg-docworkflow-role/arn:aws:iam::947132430921:policy/strata-proto-53wg-docworkflow-policy",
      name = "strata_proto_53wg_docworkflow_policy"
    },
    {
      id   = "strata-proto-53wg-schedules-role/arn:aws:iam::947132430921:policy/strata-proto-53wg-schedules-policy",
      name = "strata_proto_53wg_schedules_policy"
    },
    {
      id   = "strata-proto-aws-load-balancer-controller-role/arn:aws:iam::947132430921:policy/strata-proto-aws-alb-controller-policy",
      name = "strata_proto_aws_alb_controller_policy"
    },
    {
      id   = "strata-proto-baseline-af1067-assimilator-b52-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-assimilator-b52-policy",
      name = "strata_proto_baseline_af1067_assimilator_b52_policy"
    },
    {
      id   = "strata-proto-baseline-af1067-assimilator-e4b-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-assimilator-e4b-policy",
      name = "strata_proto_baseline_af1067_assimilator_e4b_policy"
    },
    {
      id   = "strata-proto-baseline-af1067-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-policy",
      name = "strata_proto_baseline_af1067_policy"
    },
    {
      id   = "strata-proto-baseline-af1067-sync-service-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-af1067-sync-service-policy",
      name = "strata_proto_baseline_af1067_sync_service_policy"
    },
    {
      id   = "strata-proto-baseline-api-merger-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-api-merger-policy",
      name = "strata_proto_baseline_api_merger_policy"
    },
    {
      id   = "strata-proto-baseline-docworkflow-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-docworkflow-policy",
      name = "strata_proto_baseline_docworkflow_policy"
    },
    {
      id   = "strata-proto-baseline-imsr-assimilator-rio-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-imsr-assimilator-rio-policy",
      name = "strata_proto_baseline_imsr_assimilator_rio_policy"
    },
    {
      id   = "strata-proto-baseline-imsr-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-imsr-policy",
      name = "strata_proto_baseline_imsr_policy"
    },
    {
      id   = "strata-proto-baseline-imsr-sync-service-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-imsr-sync-service-policy",
      name = "strata_proto_baseline_imsr_sync_service_policy"
    },
    {
      id   = "strata-proto-baseline-manpower-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-manpower-policy",
      name = "strata_proto_baseline_manpower_policy"
    },
    {
      id   = "strata-proto-baseline-program-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-program-policy",
      name = "strata_proto_baseline_program_policy"
    },
    {
      id   = "strata-proto-baseline-quickview-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-quickview-policy",
      name = "strata_proto_baseline_quickview_policy"
    },
    {
      id   = "strata-proto-baseline-rio-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-rio-policy",
      name = "strata_proto_baseline_rio_policy"
    },
    {
      id   = "strata-proto-baseline-schedules-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-schedules-policy",
      name = "strata_proto_baseline_schedules_policy"
    },
    {
      id   = "strata-proto-baseline-strata-ka-api-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-strata-ka-api-policy",
      name = "strata_proto_baseline_strata_ka_api_policy"
    },
    {
      id   = "strata-proto-baseline-strata-shell-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-strata-shell-policy",
      name = "strata_proto_baseline_strata_shell_policy"
    },
    {
      id   = "strata-proto-baseline-taskermgmt-role/arn:aws:iam::947132430921:policy/strata-proto-baseline-taskermgmt-policy",
      name = "strata_proto_baseline_taskermgmt_policy"
    },
    {
      id   = "strata-proto-cis-efs-driver-role/arn:aws:iam::aws:policy/service-role/AmazonEFSCSIDriverPolicy",
      name = "amazonefscsidriverpolicy"
    },
    {
      id   = "strata-proto-cis-s3-driver-role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "strata-proto-cluster-autoscaler-role/arn:aws:iam::947132430921:policy/strata-proto-eks-cluster-autoscaler-policy",
      name = "strata_proto_eks_cluster_autoscaler_policy"
    },
    {
      id   = "strata-proto-dms-role/arn:aws:iam::947132430921:policy/strata-proto-dms-policy",
      name = "strata_proto_dms_policy"
    },
    {
      id   = "strata-proto-eks-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-eks-role/arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      name = "amazoneks_cni_policy"
    },
    {
      id   = "strata-proto-eks-role/arn:aws:iam::947132430921:policy/strata-proto-eks-policy",
      name = "strata_proto_eks_policy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
      name = "amazonec2roleforssm"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      name = "amazoneks_cni_policy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
      name = "amazonec2containerregistryreadonly"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
      name = "amazoneksworkernodepolicy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy",
      name = "amazonebscsidriverpolicy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::aws:policy/service-role/AmazonEFSCSIDriverPolicy",
      name = "amazonefscsidriverpolicy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::947132430921:policy/strata-proto-eks-worker-policy",
      name = "strata_proto_eks_worker_policy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::947132430921:policy/strata-proto-eks-cluster-autoscaler-policy",
      name = "strata_proto_eks_cluster_autoscaler_policy"
    },
    {
      id   = "strata-proto-eks-worker-role/arn:aws:iam::947132430921:policy/strata-proto-aws-alb-controller-policy",
      name = "strata_proto_aws_alb_controller_policy"
    },
    {
      id   = "strata-proto-globalstrike-af1067-assimilator-b52-role/arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-assimilator-b52-policy",
      name = "strata_proto_globalstrike_af1067_assimilator_b52_policy"
    },
    {
      id   = "strata-proto-globalstrike-af1067-assimilator-e4b-role/arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-assimilator-e4b-policy",
      name = "strata_proto_globalstrike_af1067_assimilator_e4b_policy"
    },
    {
      id   = "strata-proto-globalstrike-af1067-role/arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-policy",
      name = "strata_proto_globalstrike_af1067_policy"
    },
    {
      id   = "strata-proto-globalstrike-af1067-sync-service-role/arn:aws:iam::947132430921:policy/strata-proto-globalstrike-af1067-sync-service-policy",
      name = "strata_proto_globalstrike_af1067_sync_service_policy"
    },
    {
      id   = "strata-proto-globalstrike-api-merger-role/arn:aws:iam::947132430921:policy/strata-proto-globalstrike-api-merger-policy",
      name = "strata_proto_globalstrike_api_merger_policy"
    },
    {
      id   = "strata-proto-globalstrike-strata-shell-role/arn:aws:iam::947132430921:policy/strata-proto-globalstrike-strata-shell-policy",
      name = "strata_proto_globalstrike_strata_shell_policy"
    },
    {
      id   = "strata-proto-glue-role/arn:aws:iam::aws:policy/SecretsManagerReadWrite",
      name = "secretsmanagerreadwrite"
    },
    {
      id   = "strata-proto-glue-role/arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
      name = "awsglueservicerole"
    },
    {
      id   = "strata-proto-glue-role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "strata-proto-glue-role/arn:aws:iam::aws:policy/service-role/AWSGlueDataBrewServiceRole",
      name = "awsgluedatabrewservicerole"
    },
    {
      id   = "strata-proto-glue-role/arn:aws:iam::947132430921:policy/strata-proto-glue-policy",
      name = "strata_proto_glue_policy"
    },
    {
      id   = "strata-proto-image-builder-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-image-builder-role/arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
      name = "amazonec2roleforssm"
    },
    {
      id   = "strata-proto-image-builder-role/arn:aws:iam::947132430921:policy/strata-proto-image-builder-policy",
      name = "strata_proto_image_builder_policy"
    },
    {
      id   = "strata-proto-k8s-instance-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-proto-k8s-policy",
      name = "strata_proto_k8s_policy"
    },
    {
      id   = "strata-proto-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-proto-efs-csi-policy",
      name = "strata_proto_efs_csi_policy"
    },
    {
      id   = "strata-proto-kc46-api-merger-role/arn:aws:iam::947132430921:policy/strata-proto-kc46-api-merger-policy",
      name = "strata_proto_kc46_api_merger_policy"
    },
    {
      id   = "strata-proto-kc46-strata-ka-api-role/arn:aws:iam::947132430921:policy/strata-proto-kc46-strata-ka-api-policy",
      name = "strata_proto_kc46_strata_ka_api_policy"
    },
    {
      id   = "strata-proto-kc46-strata-shell-role/arn:aws:iam::947132430921:policy/strata-proto-kc46-strata-shell-policy",
      name = "strata_proto_kc46_strata_shell_policy"
    },
    {
      id   = "strata-proto-kube-system-aws-node/arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      name = "amazoneks_cni_policy"
    },
    {
      id   = "strata-proto-lambda-ad-rotate-role/arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole",
      name = "awslambdavpcaccessexecutionrole"
    },
    {
      id   = "strata-proto-lambda-ad-rotate-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-proto-lambda-ad-rotate-role/arn:aws:iam::947132430921:policy/strata-proto-lambda-ad-rotate-policy",
      name = "strata_proto_lambda_ad_rotate_policy"
    },
    {
      id   = "strata-proto-lambda-create-ad-user-role/arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole",
      name = "awslambdavpcaccessexecutionrole"
    },
    {
      id   = "strata-proto-lambda-create-ad-user-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-proto-lambda-create-ad-user-role/arn:aws:iam::947132430921:policy/strata-proto-lambda-create-ad-user-policy",
      name = "strata_proto_lambda_create_ad_user_policy"
    },
    {
      id   = "strata-proto-lambda-k8s-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-proto-lambda-k8s-role/arn:aws:iam::947132430921:policy/strata-proto-lambda-k8s-policy",
      name = "strata_proto_lambda_k8s_policy"
    },
    {
      id   = "strata-proto-lambda-scan-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-proto-lambda-scan-role/arn:aws:iam::947132430921:policy/strata-proto-lambda-scan-policy",
      name = "strata_proto_lambda_scan_policy"
    },
    {
      id   = "strata-proto-lambda-trigger-ssm-role/arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole",
      name = "awslambdavpcaccessexecutionrole"
    },
    {
      id   = "strata-proto-lambda-trigger-ssm-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-proto-lambda-trigger-ssm-role/arn:aws:iam::947132430921:policy/strata-proto-lambda-trigger-ssm-policy",
      name = "strata_proto_lambda_trigger_ssm_policy"
    },
    {
      id   = "strata-proto-lambda-vector-embed-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-proto-lambda-vector-embed-role/arn:aws:iam::947132430921:policy/strata-proto-lambda-vector-embed-policy",
      name = "strata_proto_lambda_vector_embed_policy"
    },
    {
      id   = "strata-proto-pipeline-agent-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-pipeline-agent-role/arn:aws:iam::947132430921:policy/strata-proto-pipeline-agent-policy",
      name = "strata_proto_pipeline_agent_policy"
    },
    {
      id   = "strata-proto-power-bi-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-power-bi-role/arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilder",
      name = "ec2instanceprofileforimagebuilder"
    },
    {
      id   = "strata-proto-power-bi-role/arn:aws:iam::947132430921:policy/strata-proto-power-bi-policy",
      name = "strata_proto_power_bi_policy"
    },
    {
      id   = "strata-proto-prometheus-grafana-role/arn:aws:iam::aws:policy/AmazonSNSFullAccess",
      name = "amazonsnsfullaccess"
    },
    {
      id   = "strata-proto-sagemaker-execution-role/arn:aws:iam::aws:policy/AmazonSageMakerFullAccess",
      name = "amazonsagemakerfullaccess"
    },
    {
      id   = "strata-proto-sagemaker-execution-role/arn:aws:iam::aws:policy/AmazonS3FullAccess",
      name = "amazons3fullaccess"
    },
    {
      id   = "strata-proto-scow-api-merger-role/arn:aws:iam::947132430921:policy/strata-proto-scow-api-merger-policy",
      name = "strata_proto_scow_api_merger_policy"
    },
    {
      id   = "strata-proto-scow-imsr-assimilator-rio-role/arn:aws:iam::947132430921:policy/strata-proto-scow-imsr-assimilator-rio-policy",
      name = "strata_proto_scow_imsr_assimilator_rio_policy"
    },
    {
      id   = "strata-proto-scow-imsr-role/arn:aws:iam::947132430921:policy/strata-proto-scow-imsr-policy",
      name = "strata_proto_scow_imsr_policy"
    },
    {
      id   = "strata-proto-scow-imsr-sync-service-role/arn:aws:iam::947132430921:policy/strata-proto-scow-imsr-sync-service-policy",
      name = "strata_proto_scow_imsr_sync_service_policy"
    },
    {
      id   = "strata-proto-scow-strata-shell-role/arn:aws:iam::947132430921:policy/strata-proto-scow-strata-shell-policy",
      name = "strata_proto_scow_strata_shell_policy"
    },
    {
      id   = "strata-proto-strata-account-role/arn:aws:iam::947132430921:policy/strata-proto-strata-account-policy",
      name = "strata_proto_strata_account_policy"
    },
    {
      id   = "strata-proto-strata-admin-control-role/arn:aws:iam::947132430921:policy/strata-proto-strata-admin-control-policy",
      name = "strata_proto_strata_admin_control_policy"
    },
    {
      id   = "strata-proto-strata-admincontrol-role/arn:aws:iam::947132430921:policy/strata-proto-strata-admincontrol-policy",
      name = "strata_proto_strata_admincontrol_policy"
    },
    {
      id   = "strata-proto-strata-api-merger-role/arn:aws:iam::947132430921:policy/strata-proto-strata-apimerger-policy",
      name = "strata_proto_strata_apimerger_policy"
    },
    {
      id   = "strata-proto-strata-fileserve-role/arn:aws:iam::947132430921:policy/strata-proto-strata-fileserve-policy",
      name = "strata_proto_strata_fileserve_policy"
    },
    {
      id   = "strata-proto-strata-strata-cdn-role/arn:aws:iam::947132430921:policy/strata-proto-strata-strata-cdn-policy",
      name = "strata_proto_strata_strata_cdn_policy"
    },
    {
      id   = "strata-proto-strata-strata-connect-api-role/arn:aws:iam::947132430921:policy/strata-proto-strata-strata-connect-api-policy",
      name = "strata_proto_strata_strata_connect_api_policy"
    },
    {
      id   = "strata-proto-strata-strata-connect-ui-role/arn:aws:iam::947132430921:policy/strata-proto-strata-strata-connect-ui-policy",
      name = "strata_proto_strata_strata_connect_ui_policy"
    },
    {
      id   = "strata-proto-strata-user-control-role/arn:aws:iam::947132430921:policy/strata-proto-strata-usercontrol-policy",
      name = "strata_proto_strata_usercontrol_policy"
    },
    {
      id   = "strata-proto-utility-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-utility-role/arn:aws:iam::947132430921:policy/strata-proto-iac-policy",
      name = "strata_proto_iac_policy"
    },
    {
      id   = "strata-proto-utility-server-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-proto-utility-server-role/arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess",
      name = "amazondynamodbfullaccess"
    },
    {
      id   = "strata-proto-utility-server-role/arn:aws:iam::947132430921:policy/strata-proto-strata-strata-ka-policy",
      name = "strata_proto_strata_strata_ka_policy"
    },
    {
      id   = "strata-proto-utility-server-role/arn:aws:iam::947132430921:policy/strata-proto-eks-policy",
      name = "strata_proto_eks_policy"
    },
    {
      id   = "strata-proto-vpc-cni-role/arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      name = "amazoneks_cni_policy"
    },
    {
      id   = "strata-proto-zarf-ecr-credential-helper-role/arn:aws:iam::947132430921:policy/strata-proto-zarf-ecr-credential-helper-policy",
      name = "strata_proto_zarf_ecr_credential_helper_policy"
    },
    {
      id   = "strata-sagemaker-role/arn:aws:iam::947132430921:policy/sagemaker-notebook-instance-policy",
      name = "sagemaker_notebook_instance_policy"
    },
    {
      id   = "strata-stage-event-bridge-trigger-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-stage-event-bridge-trigger-role/arn:aws:iam::aws:policy/service-role/AWSLambdaRole",
      name = "awslambdarole"
    },
    {
      id   = "strata-stage-k8s-instance-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-stage-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-stage-efs-csi-policy",
      name = "strata_stage_efs_csi_policy"
    },
    {
      id   = "strata-stage-k8s-instance-role/arn:aws:iam::947132430921:policy/strata-stage-k8s-policy",
      name = "strata_stage_k8s_policy"
    },
    {
      id   = "strata-stage-lambda-deployment-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-stage-lambda-deployment-role/arn:aws:iam::947132430921:policy/strata-stage-lambda-deployment-policy",
      name = "strata_stage_lambda_deployment_policy"
    },
    {
      id   = "strata-stage-lambda-sync-role/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "strata-stage-lambda-sync-role/arn:aws:iam::947132430921:policy/strata-stage-lambda-sync-policy",
      name = "strata_stage_lambda_sync_policy"
    },
    {
      id   = "strata-stage-utility-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-stage-utility-role/arn:aws:iam::947132430921:policy/strata-stage-iac-policy",
      name = "strata_stage_iac_policy"
    },
    {
      id   = "strata-stage-vault-unseal-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-stage-vault-unseal-role/arn:aws:iam::947132430921:policy/strata-stage-vault-unseal-policy",
      name = "strata_stage_vault_unseal_policy"
    },
    {
      id   = "strata-test-pipeline-agent-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-test-utility-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-utility-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-utility-role/arn:aws:iam::947132430921:policy/strata-iac-policy",
      name = "strata_iac_policy"
    },
    {
      id   = "strata-vault-unseal-role/arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
      name = "amazonssmmanagedinstancecore"
    },
    {
      id   = "strata-vault-unseal-role/arn:aws:iam::947132430921:policy/strata-vault-unseal-policy",
      name = "strata_vault_unseal_policy"
    },
    {
      id   = "StrataLambdaPipelineRole/arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
      name = "awslambdabasicexecutionrole"
    },
    {
      id   = "vmimport/arn:aws:iam::947132430921:policy/BAH_Strata_IAC",
      name = "bah_strata_iac"
    },
    {
      id   = "zarf-aws/arn:aws:iam::947132430921:policy/strata-proto-eks-policy",
      name = "strata_proto_eks_policy"
    },
  ]
}
