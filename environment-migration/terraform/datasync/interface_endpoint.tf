resource "aws_vpc_endpoint" "datasync_service_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.us-east-1.datasync"
  vpc_endpoint_type = "Interface"
  subnet_ids        = ["${var.subnet_id}"]

  security_group_ids = var.sec_group_ids

  private_dns_enabled = true

  tags = {
    Name = "datasync-endpoint"
  }
}
