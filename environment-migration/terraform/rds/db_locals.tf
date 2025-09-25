locals {
  db_instances = [
    {
      id   = "database-1",
      name = "database_1"
    },
    {
      id   = "gitlab-db-ha",
      name = "gitlab_db_ha"
    },
    {
      id   = "lcmp-rds-bitbucket",
      name = "lcmp_rds_bitbucket"
    },
    {
      id   = "lcmp-rds-cds",
      name = "lcmp_rds_cds"
    },
    {
      id   = "lcmp-rds-confluence",
      name = "lcmp_rds_confluence"
    },
    {
      id   = "lcmp-rds-jira1",
      name = "lcmp_rds_jira1"
    },
    {
      id   = "pecok-ml-dev-db",
      name = "pecok_ml_dev_db"
    },
    {
      id   = "test-database",
      name = "test_database"
    },
    {
      id   = "tf-20240425121938922900000001",
      name = "tf_20240425121938922900000001"
    },
  ]
}
