resource "aws_eks_cluster" "demo" {
  name            = "${var.cluster-name}"
  role_arn        = "arn:aws:iam::320588532383:role/to22-cluster-role"    # place role arn here created in architecture   "${aws_iam_role.demo-cluster.arn}"
  version         = "1.21"

  tags = {
    Project = "TO22"
  }

  vpc_config {
    security_group_ids = ["sg-01cb2425b02c4280e"]   # security group ids or variable    ["${aws_security_group.demo-cluster.id}"]
    subnet_ids         = ["subnet-0916d4323df823b58", "subnet-0680293ee11203eae"]   # subnet-ids or variable            ["${aws_subnet.demo.*.id}"]
  }
}