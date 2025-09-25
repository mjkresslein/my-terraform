
# This security group and rules are temporary to allow bah vpn access to the rds for maap-ml.
# This can hopefully be avoided by getting f5 VPN support for Mac machines. 

resource "aws_security_group" "bah_vpn_postgres" {
  name        = "bah_vpn_postgres"
  description = "Allow postgres inbound traffic on bah vpn and all outbound traffic"
  vpc_id      = "vpc-0f80a0df29bf13280"

  tags = {
    Name = "bah_vpn_postgres"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_postgres_ipv4" {
  for_each          = { for subnet in var.bah_vpn_cidrs : subnet => subnet }
  security_group_id = aws_security_group.bah_vpn_postgres.id
  cidr_ipv4         = each.value
  from_port         = 5432
  ip_protocol       = "tcp"
  to_port           = 5432
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  for_each          = { for subnet in var.bah_vpn_cidrs : subnet => subnet }
  security_group_id = aws_security_group.bah_vpn_postgres.id
  cidr_ipv4         = each.value
  ip_protocol       = "-1"
}
