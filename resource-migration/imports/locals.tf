locals {
  instances = [
    {
      group = "ADO"
      name  = "LCMP-ADO-APP1-E"
      id    = "i-"
    },
    {
      group = "ADO"
      name  = "LCMP-ADO-APP2-E"
      id    = "i-"
    },
    {
      group = "BU"
      name  = "LCMP-WN19-BU1-A"
      id    = "i-"
    },
    {
      group = "BU"
      name  = "LCMP-WN19-BU2-A"
      id    = "i-"
    },
    {
      group = "BU"
      name  = "LCMP-WN19-BU6-A"
      id    = "i-"
    },
    {
      group = "BU"
      name  = "LCMP-WN19-BU7-A"
      id    = "i-"
    },
    {
      group = "CR"
      name  = "LCMP-CR-MAIN-D"
      id    = "i-"
    },
    {
      group = "CR"
      name  = "LCMP-CR-TEST-D"
      id    = "i-"
    },
    {
      group = "CR"
      name  = "LCMP-CR-FUTURE-D"
      id    = "i-"
    }
  ]

  ado_instances = [for instance in local.instances : instance if instance.group == "ADO"]
  bu_instances  = [for instance in local.instances : instance if instance.group == "BU"]
  cr_instances  = [for instance in local.instances : instance if instance.group == "CR"]
}
