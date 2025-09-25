data "aws_secretsmanager_secret_version" "maap_db_password" {
  secret_id = "arn:aws-us-gov:secretsmanager:us-gov-west-1:779607147673:secret:strata-prod/ssc/maap-dyCyme" # Replace with actual secret ARN
}

resource "aws_db_subnet_group" "strata_db_subnet_group" {
  name       = "main"
  subnet_ids = ["subnet-0dc1d079f1199c483", "subnet-04cfae91fb36efc7d"]

  tags = {
    Name = "Strata DB Subnet Group"
  }
}

locals {
  secret_data = jsondecode(data.aws_secretsmanager_secret_version.maap_db_password.secret_string)
}

resource "aws_db_instance" "maap_rds" {
  identifier             = "strata-prod-maap-ml-rds"
  allocated_storage      = 20
  db_name                = "maapmldb"
  engine                 = "postgres"
  instance_class         = "db.t3.micro"
  db_subnet_group_name   = aws_db_subnet_group.strata_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.vpc_postgres.id]
  username               = local.secret_data.DB_USER
  password               = local.secret_data.DB_PASSWORD
  skip_final_snapshot    = true
  tags = {
    Client  = "ssc"
    Project = "maap"
  }
  #   engine_version       = "17.2"
  #   parameter_group_name = "default.postgres17"
}
