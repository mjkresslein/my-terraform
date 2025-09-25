locals {
  iam_groups = [
    {
      id   = "cloudcheckr",
      name = "cloudcheckr"
    },
    {
      id   = "Dev_Team",
      name = "dev_team"
    },
    {
      id   = "Disable_User",
      name = "disable_user"
    },
    {
      id   = "Future_DEV_VPC_Instance_Manager",
      name = "future_dev_vpc_instance_manager"
    },
    {
      id   = "I2P_Team",
      name = "i2p_team"
    },
    {
      id   = "Operations_Team",
      name = "operations_team"
    },
    {
      id   = "Service_Accounts",
      name = "service_accounts"
    },
  ]
}
