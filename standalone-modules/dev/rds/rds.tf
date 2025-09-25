data "aws_secretsmanager_secret_version" "maap_db_password" {
  secret_id = "arn:aws:secretsmanager:us-east-1:947132430921:secret:strata-proto/ssc/maap-8nMtZj" # Replace with actual secret ARN
}

data "aws_db_subnet_group" "strata_proto_db_group" {
  name = "strata-proto-apps"
}
locals {
  secret_data = jsondecode(data.aws_secretsmanager_secret_version.maap_db_password.secret_string)
}

resource "aws_db_instance" "maap_rds" {
  identifier             = "maap-ml-rds"
  allocated_storage      = 20
  db_name                = "maapmldb"
  engine                 = "postgres"
  instance_class         = "db.t3.micro"
  db_subnet_group_name   = data.aws_db_subnet_group.strata_proto_db_group.name
  vpc_security_group_ids = ["sg-0aa7ade1e1babab2c", aws_security_group.bah_vpn_postgres.id]
  username               = local.secret_data.db_username
  password               = local.secret_data.db_password
  skip_final_snapshot    = true
  tags = {
    Client  = "ssc"
    Project = "maap"
  }
  #   engine_version       = "17.2"
  #   parameter_group_name = "default.postgres17"
}
