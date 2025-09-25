# __generated__ by Terraform from "LCMP_CR_Server_Role"
resource "aws_iam_role" "lcmp_cr_server_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 14400
  name                  = "LCMP_CR_Server_Role"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags = {
    ticket = "IS-64801"
  }
  tags_all = {
    ticket = "IS-64801"
  }
}

# __generated__ by Terraform from "vmimport"
resource "aws_iam_role" "vmimport" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Condition = {
        StringEquals = {
          "sts:ExternalId" = "vmimport"
        }
      }
      Effect = "Allow"
      Principal = {
        Service = "vmie.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "vmimport"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "strata-proto-eks-worker-role"
resource "aws_iam_role" "strata_proto_eks_worker_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Sid = "1"
      },
      {
        Action = "sts:AssumeRoleWithWebIdentity"
        Effect = "Allow"
        Principal = {
          Federated = "arn:aws:iam::947132430921:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/B574FA81FB3A528379C25CD28F97629B"
        }
        Condition = {
          StringEquals = {
            "oidc.eks.us-east-1.amazonaws.com/id/B574FA81FB3A528379C25CD28F97629B:sub" = "system:serviceaccount:kube-system:fluent-bit-sa"
          }
        }
    }]
    Version = "2012-10-17"
  })
  description           = "strata-proto EKS worker role"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "strata-proto-eks-worker-role"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = null
  tags = {
    Environment = "Proto"
    Name        = "strata-proto-eks-worker-role"
    Project     = "Strata"
  }
  tags_all = {
    Environment = "Proto"
    Name        = "strata-proto-eks-worker-role"
    Project     = "Strata"
  }
}

# ## IAM Role for EKS Auth to assume for pod identity
# __generated__ by Terraform from "AmazonEKSPodIdentity"
resource "aws_iam_role" "eks_pod_identity" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      }, {
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "oidc.eks.us-east-1.amazonaws.com/id/C57FAE736476D0558CDD5901CE63DE7C:aud" = "sts.amazon.com"
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::947132430921:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/C57FAE736476D0558CDD5901CE63DE7C"
      }
      }, {
      Sid    = "AllowEksAuthToAssumeRoleForPodIdentity"
      Effect = "Allow"
      Principal = {
        Service = "pods.eks.amazonaws.com"
      }
      Action = [
        "sts:AssumeRole",
        "sts:TagSession"
      ]
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "AmazonEKSPodIdentity"
  name_prefix           = null
  path                  = "/"
  permissions_boundary  = "arn:aws:iam::947132430921:policy/Deny_Default_VPC"
  tags                  = {}
  tags_all              = {}
}
