locals {
  vpc_peering_connections = [
    {
      id   = "pcx-0f0c62b927567ed50",
      name = "lcmpdevelopment_to_databricks"
    },
    {
      id   = "pcx-078b6c60e9be0539e",
      name = "hosting_to_strata"
    },
    {
      id   = "pcx-78825c11",
      name = "hosting_to_future"
    },
    {
      id   = "pcx-267e1c4f",
      name = "hosting_to_analytics"
    },
    {
      id   = "pcx-0e65cab07214b0803",
      name = "lcmpdevelopment_to_strata"
    },
    {
      id   = "pcx-0b21a2e0d91f20b12",
      name = "hosting_to_databricks"
    },
    {
      id   = "pcx-aec356c7",
      name = "hosting_to_development"
    },
    {
      id   = "pcx-0605ae2eec242d6d2",
      name = "databricks_to_strata"
    },
  ]
}
