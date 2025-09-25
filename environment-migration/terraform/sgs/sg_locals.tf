locals {
  security_groups = [
    {
      id   = "sg-02076528c4a9dde73",
      name = "strata_proto_utility_security_group"
    },
    {
      id   = "sg-07891592eec106ebb",
      name = "security_group_for_outbound_nfs_d_zbcbabmgsxev"
    },
    {
      id   = "sg-9725dce9",
      name = "devanalyticscluster_puppetmastersecuritygroup_4ql2ug2rbmaz"
    },
    {
      id   = "sg-3db8474c",
      name = "default"
    },
    {
      id   = "sg-00c733fe6dd9d5d96",
      name = "strata_proto_eks_cluster_20240415150229553200000002"
    },
    {
      id   = "sg-a025dcde",
      name = "default"
    },
    {
      id   = "sg-9081e7ed",
      name = "f5_external_traffic_security_group"
    },
    {
      id   = "sg-755f310c",
      name = "lcmp_future_development_environment_puppet_master"
    },
    {
      id   = "sg-025c8b286f14f7154",
      name = "strata_proto_lambda_security_group"
    },
    {
      id   = "sg-0671db984578445c4",
      name = "strata_dev_rke2_security_group"
    },
    {
      id   = "sg-06f6aab8631d6cab2",
      name = "gitlab_loadbalancer_sec_group"
    },
    {
      id   = "sg-a63242c1",
      name = "default"
    },
    {
      id   = "sg-06cea82b9bc9fa856",
      name = "strata_proto_eks_security_group"
    },
    {
      id   = "sg-5daccf3a",
      name = "hosting___oob_security_group"
    },
    {
      id   = "sg-0eb3be7f3286923d3",
      name = "strata_dev_windows_utility_group"
    },
    {
      id   = "sg-22a38944",
      name = "new_rhel_ssh"
    },
    {
      id   = "sg-6435b61d",
      name = "lcmp_future_development_environment_all_traffic_from_vpn"
    },
    {
      id   = "sg-0aa7ade1e1babab2c",
      name = "strata_proto_aurora"
    },
    {
      id   = "sg-04f93b9c758e22ec8",
      name = "strata_dev_utility_server_group"
    },
    {
      id   = "sg-02c1060c81df3b0ff",
      name = "d_9067780e07_controllers"
    },
    {
      id   = "sg-f8b6059e",
      name = "hosting___domain_member_security_group"
    },
    {
      id   = "sg-e1161787",
      name = "hosting___nat_server_security_group"
    },
    {
      id   = "sg-0d8bd03f192fe6c32",
      name = "launch_wizard_1"
    },
    {
      id   = "sg-04405fc8488f074aa",
      name = "strata_dev_eks_security_group"
    },
    {
      id   = "sg-0eb0bdd313a9077a5",
      name = "security_group_for_outbound_nfs_d_bnsicgkektud"
    },
    {
      id   = "sg-052b993e83939296e",
      name = "security_group_for_inbound_nfs_d_zbcbabmgsxev"
    },
    {
      id   = "sg-05c18d0b58a41f01b",
      name = "strata_proto_rke2"
    },
    {
      id   = "sg-ae71b8d0",
      name = "analytics_nat"
    },
    {
      id   = "sg-0eca6164b7ac1549e",
      name = "strata_proto_vault"
    },
    {
      id   = "sg-0ac7a698e7d4239c9",
      name = "strata_proto_glue_security_group"
    },
    {
      id   = "sg-edb6058b",
      name = "hosting___domain_controller_security_group"
    },
    {
      id   = "sg-03969e2dc9916c37f",
      name = "strata_proto_default_outbound"
    },
    {
      id   = "sg-0ec58212ae1a574ff",
      name = "strata_proto_rke2_security_group"
    },
    {
      id   = "sg-2068845d",
      name = "f5_internal_traffic_security_group"
    },
    {
      id   = "sg-0adfb57de63191329",
      name = "rds_ec2_1"
    },
    {
      id   = "sg-0ca56b8244e5bf0a1",
      name = "gitlab_rds_sec_group"
    },
    {
      id   = "sg-0a495f71a78d732f9",
      name = "strata_proto_power_bi_security_group"
    },
    {
      id   = "sg-0e5997c3919812af8",
      name = "strata_nodeport_services"
    },
    {
      id   = "sg-a16f83dc",
      name = "f5_management_traffic_security_group"
    },
    {
      id   = "sg-6c6e9013",
      name = "i2p_public_web_access"
    },
    {
      id   = "sg-069e6477",
      name = "afcec_security_group_1"
    },
    {
      id   = "sg-1eaccf79",
      name = "hosting___allow_outbound_security_group"
    },
    {
      id   = "sg-0465a8561daea5cdb",
      name = "strata_proto_opensearch_security_group"
    },
    {
      id   = "sg-a0708edf",
      name = "i2p_mongodb_access"
    },
    {
      id   = "sg-07e936c56e004207f",
      name = "eks_cluster_sg_strata_proto_eks_1264963560"
    },
    {
      id   = "sg-006c3658a5c679a09",
      name = "strata_proto_eks_node_20240415150229552200000001"
    },
    {
      id   = "sg-822f3bf8",
      name = "lcmp_development___domain_member_security_group"
    },
    {
      id   = "sg-0ec827df20873caae",
      name = "lcmp_cameo"
    },
    {
      id   = "sg-007d420ec89e2bf01",
      name = "strata_proto_client_vpn"
    },
    {
      id   = "sg-7a347d06",
      name = "hosting___splunk"
    },
    {
      id   = "sg-0caa589f99e85226d",
      name = "ec2_rds_1"
    },
    {
      id   = "sg-6d818517",
      name = "default"
    },
    {
      id   = "sg-084ef412ca13c2384",
      name = "strata_efs"
    },
    {
      id   = "sg-f36f918c",
      name = "i2p_ssh_access"
    },
    {
      id   = "sg-0a151572eb9b578f1",
      name = "strata_proto_client_vpn_security_group"
    },
    {
      id   = "sg-ff699780",
      name = "i2p_private_web_access"
    },
    {
      id   = "sg-0fe25864b1a359349",
      name = "strata_proto_pipeline_security_group"
    },
    {
      id   = "sg-0ee4d99a97441c608",
      name = "grype_sec_group"
    },
    {
      id   = "sg-06108601598bc904f",
      name = "strata_proto_ssh"
    },
    {
      id   = "sg-09b9d638401452936",
      name = "default"
    },
    {
      id   = "sg-04ed1b194c37d9207",
      name = "strata_dev_vault_security_group"
    },
    {
      id   = "sg-02756c9685424ff56",
      name = "vpn_connected"
    },
    {
      id   = "sg-017a96b2a29c21593",
      name = "strata_proto_efs_security_group"
    },
    {
      id   = "sg-0745d2d2dd924f6b8",
      name = "security_group_for_inbound_nfs_d_bnsicgkektud"
    },
    {
      id   = "sg-a5a2c1c2",
      name = "default"
    },
    {
      id   = "sg-0ea03d23634e2b55d",
      name = "default"
    },
  ]
}
