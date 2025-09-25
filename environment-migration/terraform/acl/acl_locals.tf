locals {
  default_network_acls = [
    {
      id   = "acl-046f642c97dd36fa6",
      name = "none"
    },
    {
      id   = "acl-08ed68cabfbd6e1a6",
      name = "databricks"
    },
    {
      id   = "acl-bb1fe6df",
      name = "future_development_subnet_acl"
    },
    {
      id   = "acl-43fe0c27",
      name = "hosting_subnet_acl"
    },
    {
      id   = "acl-3703ff51",
      name = "lcmp_ide_development_subnet_acl"
    },
    {
      id   = "acl-3b8f3142",
      name = "analytics_acl"
    },
    {
      id   = "acl-7c226905",
      name = "afcec_acl"
    },
  ]
}
