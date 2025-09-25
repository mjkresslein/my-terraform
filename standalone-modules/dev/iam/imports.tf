import {
  to = aws_iam_role.lcmp_cr_server_role
  id = "LCMP_CR_Server_Role"
}

import {
  to = aws_iam_role.vmimport
  id = "vmimport"
}

import {
  to = aws_iam_role.strata_proto_eks_worker_role
  id = "strata-proto-eks-worker-role"
}

import {
  to = aws_iam_role.eks_pod_identity
  id = "AmazonEKSPodIdentity"
}

import {
  to = aws_iam_role_policy.dynamo_perm
  id = "LCMP_CR_Server_Role:Dynamo_perm"
}

import {
  to = aws_iam_role_policy.bedrocknew
  id = "LCMP_CR_Server_Role:Bedrocknew"
}

import {
  to = aws_iam_role_policy.acmfullaccess
  id = "LCMP_CR_Server_Role:ACMFullAccess"
}

import {
  to = aws_iam_policy.bah_strata_iac
  id = "arn:aws:iam::947132430921:policy/BAH_Strata_IAC"
}

import {
  to = aws_iam_policy.passrole
  id = "arn:aws:iam::947132430921:policy/passrole"
}

import {
  to = aws_iam_policy.bah_passrole_policy
  id = "arn:aws:iam::947132430921:policy/BAH_PassRole_Policy"
}

import {
  to = aws_iam_policy.bahsso_admin_additionalpermissions
  id = "arn:aws:iam::947132430921:policy/BAHSSO_Admin_AdditionalPermissions"
}

import {
  to = aws_iam_policy.dev_additional_services
  id = "arn:aws:iam::947132430921:policy/dev_additional_services"
}

import {
  to = aws_iam_policy.dev_passrole
  id = "arn:aws:iam::947132430921:policy/dev_passrole"
}

import {
  to = aws_iam_policy.dev_s3_policy
  id = "arn:aws:iam::947132430921:policy/dev_s3_policy"
}

import {
  to = aws_iam_policy.bah_dlm
  id = "arn:aws:iam::947132430921:policy/BAH_DLM"
}