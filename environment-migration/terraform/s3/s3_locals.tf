locals {
  s3_buckets = [
    {
      id   = "appstream-app-settings-us-east-1-947132430921-fv5q4rey",
      name = "appstream_app_settings_us_east_1_947132430921_fv5q4rey"
    },
    {
      id   = "appstream2-36fb080bb8-us-east-1-947132430921",
      name = "appstream2_36fb080bb8_us_east_1_947132430921"
    },
    {
      id   = "aws-glue-assets-947132430921-us-east-1",
      name = "aws_glue_assets_947132430921_us_east_1"
    },
    {
      id   = "aws-sam-cli-managed-default-samclisourcebucket-wqi1n4dwpoqs",
      name = "aws_sam_cli_managed_default_samclisourcebucket_wqi1n4dwpoqs"
    },
    {
      id   = "bah-947132430921-us-east-1-access-logs-governance",
      name = "bah_947132430921_us_east_1_access_logs_governance"
    },
    {
      id   = "bah-dfs-dev",
      name = "bah_dfs_dev"
    },
    {
      id   = "bah-physna-share",
      name = "bah_physna_share"
    },
    {
      id   = "bahlcmptest",
      name = "bahlcmptest"
    },
    {
      id   = "bahlcmptestopen",
      name = "bahlcmptestopen"
    },
    {
      id   = "certauthappstream",
      name = "certauthappstream"
    },
    {
      id   = "cf-templates-o1dsbktp57d00-us-east-1",
      name = "cf_templates_o1dsbktp57d00_us_east_1"
    },
    {
      id   = "cf-templates-ywlfej13ullc-us-east-1",
      name = "cf_templates_ywlfej13ullc_us_east_1"
    },
    {
      id   = "codepipeline-us-east-1-80367641815",
      name = "codepipeline_us_east_1_80367641815"
    },
    {
      id   = "dm-lcmp2strata",
      name = "dm_lcmp2strata"
    },
    {
      id   = "elasticbeanstalk-us-east-1-947132430921",
      name = "elasticbeanstalk_us_east_1_947132430921"
    },
    {
      id   = "hyperglance-bucket",
      name = "hyperglance_bucket"
    },
    {
      id   = "hyperglance-cur-is-126835",
      name = "hyperglance_cur_is_126835"
    },
    {
      id   = "kevins-test-bucket",
      name = "kevins_test_bucket"
    },
    {
      id   = "lcmp-dev-private-ca",
      name = "lcmp_dev_private_ca"
    },
    {
      id   = "lcmp-dletest-private-ca",
      name = "lcmp_dletest_private_ca"
    },
    {
      id   = "lcmp-matomo-analytics",
      name = "lcmp_matomo_analytics"
    },
    {
      id   = "lcmp-ops-terraform-state",
      name = "lcmp_ops_terraform_state"
    },
    {
      id   = "lcmp-rancher-terraform-up-and-running-state",
      name = "lcmp_rancher_terraform_up_and_running_state"
    },
    {
      id   = "lcmpdevpatchingresults",
      name = "lcmpdevpatchingresults"
    },
    {
      id   = "maap-ml-dev-file-bucket",
      name = "maap_ml_dev_file_bucket"
    },
    {
      id   = "mygluestest",
      name = "mygluestest"
    },
    {
      id   = "ncet-codedeploy-appspec",
      name = "ncet_codedeploy_appspec"
    },
    {
      id   = "rep-gen",
      name = "rep_gen"
    },
    {
      id   = "sagemaker-studio-1wnglkzj2zn",
      name = "sagemaker_studio_1wnglkzj2zn"
    },
    {
      id   = "sagemaker-studio-947132430921-1tp8lm0adno",
      name = "sagemaker_studio_947132430921_1tp8lm0adno"
    },
    {
      id   = "sagemaker-studio-947132430921-2l6j6x9io23",
      name = "sagemaker_studio_947132430921_2l6j6x9io23"
    },
    {
      id   = "sagemaker-studio-947132430921-3fyts6czbkw",
      name = "sagemaker_studio_947132430921_3fyts6czbkw"
    },
    {
      id   = "sagemaker-studio-947132430921-8h4tkzu9kn",
      name = "sagemaker_studio_947132430921_8h4tkzu9kn"
    },
    {
      id   = "sagemaker-studio-947132430921-8zhpmvzswvg",
      name = "sagemaker_studio_947132430921_8zhpmvzswvg"
    },
    {
      id   = "sagemaker-studio-947132430921-be2bxboz8e9",
      name = "sagemaker_studio_947132430921_be2bxboz8e9"
    },
    {
      id   = "sagemaker-studio-947132430921-c9eq0w34wt8",
      name = "sagemaker_studio_947132430921_c9eq0w34wt8"
    },
    {
      id   = "sagemaker-studio-947132430921-ez69iwgolga",
      name = "sagemaker_studio_947132430921_ez69iwgolga"
    },
    {
      id   = "sagemaker-studio-947132430921-h32ghc4g5q6",
      name = "sagemaker_studio_947132430921_h32ghc4g5q6"
    },
    {
      id   = "sagemaker-studio-947132430921-mzrax9chd5p",
      name = "sagemaker_studio_947132430921_mzrax9chd5p"
    },
    {
      id   = "sagemaker-studio-947132430921-sy7kp86paq8",
      name = "sagemaker_studio_947132430921_sy7kp86paq8"
    },
    {
      id   = "sagemaker-studio-947132430921-t6wtv7wz4h",
      name = "sagemaker_studio_947132430921_t6wtv7wz4h"
    },
    {
      id   = "sagemaker-us-east-1-947132430921",
      name = "sagemaker_us_east_1_947132430921"
    },
    {
      id   = "sagemaker-us-east-2-947132430921",
      name = "sagemaker_us_east_2_947132430921"
    },
    {
      id   = "sagemaker-us-west-2-947132430921",
      name = "sagemaker_us_west_2_947132430921"
    },
    {
      id   = "ssc-radiant-scan-findings",
      name = "ssc_radiant_scan_findings"
    },
    {
      id   = "strata-data-migration",
      name = "strata_data_migration"
    },
    {
      id   = "strata-demo-input-files",
      name = "strata_demo_input_files"
    },
    {
      id   = "strata-ka-api",
      name = "strata_ka_api"
    },
    {
      id   = "strata-prod-artifacts",
      name = "strata_prod_artifacts"
    },
    {
      id   = "strata-proto-alb-logs",
      name = "strata_proto_alb_logs"
    },
    {
      id   = "strata-proto-app-storage",
      name = "strata_proto_app_storage"
    },
    {
      id   = "strata-proto-mssql-backups",
      name = "strata_proto_mssql_backups"
    },
    {
      id   = "strata-proto-packages",
      name = "strata_proto_packages"
    },
    {
      id   = "strata-proto-pipeline-artifacts",
      name = "strata_proto_pipeline_artifacts"
    },
    {
      id   = "strata-proto-sagemaker",
      name = "strata_proto_sagemaker"
    },
    {
      id   = "strata-proto-scan-artifacts",
      name = "strata_proto_scan_artifacts"
    },
    {
      id   = "strata-stage-artifacts",
      name = "strata_stage_artifacts"
    },
    {
      id   = "strata-terraform-state-files",
      name = "strata_terraform_state_files"
    },
    {
      id   = "strata-terragrunt-state-files",
      name = "strata_terragrunt_state_files"
    },
    {
      id   = "test-enconding-pdf",
      name = "test_enconding_pdf"
    },
    {
      id   = "textract-console-us-east-1-cc897823-356b-42e8-8d79-9bfe1303ce03",
      name = "textract_console_us_east_1_cc897823_356b_42e8_8d79_9bfe1303ce03"
    },
    {
      id   = "useast.bah-dev.amac-automation",
      name = "useast_bah_dev_amac_automation"
    },
    {
      id   = "useast.bah-dev.amplifydm-deploys",
      name = "useast_bah_dev_amplifydm_deploys"
    },
    {
      id   = "useast.bah-dev.build-artifacts",
      name = "useast_bah_dev_build_artifacts"
    },
    {
      id   = "useast.bah-dev.cds-deploys",
      name = "useast_bah_dev_cds_deploys"
    },
    {
      id   = "useast.bah-dev.cf-templates",
      name = "useast_bah_dev_cf_templates"
    },
    {
      id   = "useast.bah-dev.cloudtrail",
      name = "useast_bah_dev_cloudtrail"
    },
    {
      id   = "useast.bah-dev.gov-deploys",
      name = "useast_bah_dev_gov_deploys"
    },
    {
      id   = "useast.bah-dev.il6-deploys",
      name = "useast_bah_dev_il6_deploys"
    },
    {
      id   = "useast.bah-dev.lcmp-git-tfs",
      name = "useast_bah_dev_lcmp_git_tfs"
    },
    {
      id   = "useast.bah-dev.legacy-sql-backups",
      name = "useast_bah_dev_legacy_sql_backups"
    },
    {
      id   = "useast.bah-dev.ncat-model-input",
      name = "useast_bah_dev_ncat_model_input"
    },
    {
      id   = "useast.bah-dev.ncat-model-output",
      name = "useast_bah_dev_ncat_model_output"
    },
    {
      id   = "useast.bah-dev.ncat.wf-simulation-config",
      name = "useast_bah_dev_ncat_wf_simulation_config"
    },
    {
      id   = "useast.bah-dev.release-cf-templates",
      name = "useast_bah_dev_release_cf_templates"
    },
    {
      id   = "useast.bah-dev.security",
      name = "useast_bah_dev_security"
    },
    {
      id   = "useast.bah-dev.smartstore",
      name = "useast_bah_dev_smartstore"
    },
    {
      id   = "useast.bah-dev.software",
      name = "useast_bah_dev_software"
    },
    {
      id   = "useast.bah-dev.sql-backups",
      name = "useast_bah_dev_sql_backups"
    },
    {
      id   = "useast.bah-dev.stag-deploys",
      name = "useast_bah_dev_stag_deploys"
    },
    {
      id   = "useast.bah-dev.tools",
      name = "useast_bah_dev_tools"
    },
  ]
}
