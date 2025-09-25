locals {
  subnets = [
    {
      id   = "subnet-a8d9d5f1",
      name = "hosting___private_subnet_b"
    },
    {
      id   = "subnet-0405969e5577d0b7d",
      name = "databricks___private_subnet_1b"
    },
    {
      id   = "subnet-1834df25",
      name = "hosting___vpn_user_subnet"
    },
    {
      id   = "subnet-0b997fbe812be161d",
      name = "strata___public_subnet_1b"
    },
    {
      id   = "subnet-06a111abe588cd5dc",
      name = "strata___private_subnet_1b"
    },
    {
      id   = "subnet-f57f9583",
      name = "hosting___private_subnet_a"
    },
    {
      id   = "subnet-9877f2d1",
      name = "oob_a_server_subnet"
    },
    {
      id   = "subnet-0f4faad0f8ea24d2d",
      name = "databricks___private_subnet_1c"
    },
    {
      id   = "subnet-0ff4728070ceb1eea",
      name = "strata___eks_test_private_subnet_1b"
    },
    {
      id   = "subnet-0b3b525d08620de7c",
      name = "strata___private_subnet_1c"
    },
    {
      id   = "subnet-92bf39db",
      name = "hosting___external_f5_subnet_a"
    },
    {
      id   = "subnet-fc24eda7",
      name = "oob_b_server_subnet"
    },
    {
      id   = "subnet-fa77f2b3",
      name = "domain_a_subnet"
    },
    {
      id   = "subnet-91e45eac",
      name = "hosting___dmz_nat_subnet"
    },
    {
      id   = "subnet-04e4e379e36e37a54",
      name = "strata___vpn_private_subnet_1b"
    },
    {
      id   = "subnet-e84727a0",
      name = "afcec_subnet_1"
    },
    {
      id   = "subnet-dbd71d80",
      name = "hosting___management_f5_subnet_b"
    },
    {
      id   = "subnet-e622ebbd",
      name = "dmz_b_subnet"
    },
    {
      id   = "subnet-59bc3a10",
      name = "hosting___management_f5_subnet_a"
    },
    {
      id   = "subnet-d877f291",
      name = "system_security_a_subnet"
    },
    {
      id   = "subnet-93ea29e5",
      name = "lcmp_future_development___private_1"
    },
    {
      id   = "subnet-5dd6732b",
      name = "lcmp_future_development___public"
    },
    {
      id   = "subnet-092e560ae5abae8f2",
      name = "databricks___public_subnet_1a"
    },
    {
      id   = "subnet-0e30f08a739fb4145",
      name = "databricks___private_subnet_1a"
    },
    {
      id   = "subnet-c05bc689",
      name = "hosting___vpn_f5_subnet_a"
    },
    {
      id   = "subnet-3be16e72",
      name = "hosting___private_f5_subnet_a"
    },
    {
      id   = "subnet-9f25ecc4",
      name = "app_b_subnet"
    },
    {
      id   = "subnet-08d71d53",
      name = "hosting___external_f5_subnet_b"
    },
    {
      id   = "subnet-1e79fd22",
      name = "system_security_e_subnet"
    },
    {
      id   = "subnet-0558645dde5eb9710",
      name = "databricks___public_subnet_1c"
    },
    {
      id   = "subnet-01021f9677638c0e2",
      name = "fargate_a_subnet"
    },
    {
      id   = "subnet-3d24ed66",
      name = "system_security_b_subnet"
    },
    {
      id   = "subnet-c374f18a",
      name = "network_security_a_subnet"
    },
    {
      id   = "subnet-8874f1c1",
      name = "web_a_subnet"
    },
    {
      id   = "subnet-2974f160",
      name = "dmz_a_subnet"
    },
    {
      id   = "subnet-0ad62d4006b48ee27",
      name = "strata___db_private_subnet_1b"
    },
    {
      id   = "subnet-8200adca",
      name = "analytics_public_subnet"
    },
    {
      id   = "subnet-a606abee",
      name = "analytics_private_subnet"
    },
    {
      id   = "subnet-0444d3617361ef1ff",
      name = "strata___db_private_subnet_1c"
    },
    {
      id   = "subnet-5b77f212",
      name = "db_a_subnet"
    },
    {
      id   = "subnet-2625ec7d",
      name = "web_b_subnet"
    },
    {
      id   = "subnet-1725ec4c",
      name = "network_security_b_subnet"
    },
    {
      id   = "subnet-8b77f2c2",
      name = "oob_a_client_subnet"
    },
    {
      id   = "subnet-d54bed8e",
      name = "hosting___vpn_f5_subnet_b"
    },
    {
      id   = "subnet-1fe27b32",
      name = "web_d_subnet"
    },
    {
      id   = "subnet-b174f1f8",
      name = "app_a_subnet"
    },
    {
      id   = "subnet-790a310e",
      name = "hosting___dmz_vpn_subnet"
    },
    {
      id   = "subnet-0836364399c5953c1",
      name = "strata___eks_test_private_subnet_1a"
    },
    {
      id   = "subnet-0e5209420e674ed5d",
      name = "strata___private_subnet_1a"
    },
    {
      id   = "subnet-6cd27a51",
      name = "hosting___vpn_group_subnet"
    },
    {
      id   = "subnet-2424ed7f",
      name = "domain_b_subnet"
    },
    {
      id   = "subnet-0eca18e487032f632",
      name = "databricks___public_subnet_1b"
    },
    {
      id   = "subnet-063747ecdb705a014",
      name = "strata___db_private_subnet_1a"
    },
    {
      id   = "subnet-5a24ed01",
      name = "db_b_subnet"
    },
    {
      id   = "subnet-0ff48cc702f88a543",
      name = "strata___public_subnet_1c"
    },
    {
      id   = "subnet-4777c17b",
      name = "app_e_subnet"
    },
    {
      id   = "subnet-0f70bb0f2f6a8d3eb",
      name = "strata___vpn_private_subnet_1a"
    },
    {
      id   = "subnet-00eb3da92b417c6e1",
      name = "strata___public_subnet_1a"
    },
    {
      id   = "subnet-6a5e8e31",
      name = "hosting___private_f5_subnet_b"
    },
    {
      id   = "subnet-c124ed9a",
      name = "oob_b_client_subnet"
    },
  ]
}
