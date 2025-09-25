### Temporary EC2 solution for MAAP team to connect to in order to interact with RDS instance.

resource "aws_instance" "custom_ami_temp" {
  ami                    = "ami-006f50eeab896e22d"
  instance_type          = "t3.medium"
  subnet_id              = "subnet-06a111abe588cd5dc"
  vpc_security_group_ids = ["sg-006c3658a5c679a09", "sg-06cea82b9bc9fa856"]
  iam_instance_profile   = "eks-80cb1f9e-eacf-a5bd-b359-7bdeaf72b278"
  key_name               = "strata-proto-20240314170320266000000001"

  tags = {
    Name = "custom-ami-temp"
  }
}
