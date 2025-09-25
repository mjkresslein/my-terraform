locals {
  iam_roles = [
    {
      id   = "LCMP_CR_Server_Role",
      name = "lcmp_cr_server_role"
    }
  ]

  iam_role_policies = [
    {
      id   = "LCMP_CR_Server_Role:Dynamo_perm",
      name = "dynamo_perm"
    },
    {
      id   = "LCMP_CR_Server_Role:Bedrocknew",
      name = "bedrocknew"
    },
    {
      id   = "LCMP_CR_Server_Role:ACMFullAccess",
      name = "acmfullaccess"
    }
  ]

  iam_policies = [
    {
      id   = "arn:aws:iam::947132430921:policy/passrole",
      name = "passrole"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_PassRole_Policy",
      name = "bah_passrole_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAHSSO_Admin_AdditionalPermissions",
      name = "bahsso_admin_additionalpermissions"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dev_additional_services",
      name = "dev_additional_services"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dev_passrole",
      name = "dev_passrole"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/dev_s3_policy",
      name = "dev_s3_policy"
    },
    {
      id   = "arn:aws:iam::947132430921:policy/BAH_DLM",
      name = "bah_dlm"
    }
  ]
}
