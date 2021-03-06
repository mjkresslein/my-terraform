# This data source is included for ease of sample architecture deployment
# and can be swapped out as necessary.
data "aws_region" "current" {}

# EKS currently documents this required userdata for EKS worker nodes to
# properly configure Kubernetes applications on the EC2 instance.
# We utilize a Terraform local here to simplify Base64 encoding this
# information into the AutoScaling Launch Configuration.
# More information: https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html
locals {
  demo-node-userdata = <<USERDATA
#!/bin/bash
set -o xtrace
/etc/eks/bootstrap.sh --apiserver-endpoint '${aws_eks_cluster.demo.endpoint}' --b64-cluster-ca '${aws_eks_cluster.demo.certificate_authority.0.data}' '${var.cluster-name}'
USERDATA
}

resource "aws_launch_configuration" "demo" {
  associate_public_ip_address = true
  iam_instance_profile        = "arn:aws:iam::320588532383:instance-profile/to22-worker-node-role"  # "${aws_iam_instance_profile.demo-node.name}"
  image_id                    = data.aws_ami.eks-worker.id
  instance_type               = "m4.large"
  name_prefix                 = "to22-"
  security_groups             = ["sg-0655a904cefe27a16"]        # ["${aws_security_group.demo-node.id}"]
  user_data_base64            = "${base64encode(local.demo-node-userdata)}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "demo" {
  desired_capacity     = 2
  launch_configuration = aws_launch_configuration.demo.id
  max_size             = 2
  min_size             = 1
  name                 = "to22-asg"
  vpc_zone_identifier  = ["subnet-0916d4323df823b58", "subnet-0680293ee11203eae"]       # ["${aws_subnet.demo.*.id}"]

  tag {
    key                 = "Name"
    value               = "to22-eks-worker-node"
    propagate_at_launch = true
  }

  tag {
    key                 = "kubernetes.io/cluster/${var.cluster-name}"
    value               = "owned"
    propagate_at_launch = true
  }

  tag {
    key                 = "Project"
    value               = "TO22"
    propagate_at_launch = true
  }
}