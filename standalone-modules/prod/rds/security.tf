
# This security group and rules are temporary to allow bah vpn access to the rds for maap-ml.
# This can hopefully be avoided by getting f5 VPN support for Mac machines. 

resource "aws_security_group" "vpc_postgres" {
  name        = "vpc_postgres"
  description = "Allow postgres inbound traffic on f5 vpn and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "vpc_postgres"
  }
}

resource "aws_security_group_rule" "allow_postgres_from_eks" {
  for_each                 = { for sg in var.eks_sgs : sg => sg }
  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  security_group_id        = aws_security_group.vpc_postgres.id
  source_security_group_id = each.value
  description              = "Allow Postgres from EKS SG"
}


resource "aws_security_group_rule" "allow_all_traffic" {
  type              = "egress"
  security_group_id = aws_security_group.vpc_postgres.id
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow all outbound traffic"
}
