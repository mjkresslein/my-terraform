data "aws_ssm_parameter" "datasync_ami" {
  name = "/aws/service/datasync/ami"
}

resource "aws_instance" "data_sync_agent" {
  ami                    = data.aws_ssm_parameter.datasync_ami.value
  instance_type          = "m5.4xlarge"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.sec_group_ids
  tags = {
    Name = "DataSyncAgent"
  }
}
