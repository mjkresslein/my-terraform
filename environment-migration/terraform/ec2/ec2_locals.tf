locals {
  instances = [
    {
      id   = "i-b648912e",
      name = "lcmp_db1_a"
    },
    {
      id   = "i-0b8168118838f660e",
      name = "lcmp_tfs1_e"
    },
    {
      id   = "i-0bdd23278906f456e",
      name = "teamyoung_svn"
    },
    {
      id   = "i-0f2aa19c5b62b0056",
      name = "teamyoung_license"
    },
    {
      id   = "i-0671929fdce4e4f70",
      name = "lcmp_hbs1_a"
    },
    {
      id   = "i-0d2345a435e26199e",
      name = "new_lcmp_f51_a"
    },
    {
      id   = "i-08a395d3e15fe945d",
      name = "lcmp_spl1_a"
    },
    {
      id   = "i-08b72f1099ec3893b",
      name = "lcmp_eml1_b"
    },
    {
      id   = "i-05e3597fdce75ca1a",
      name = "lcmp_wn19_base_cr"
    },
    {
      id   = "i-04c266aaae79e35e6",
      name = "lcmp_wn19_sp1_b"
    },
    {
      id   = "i-00c128359dd78787f",
      name = "lcmp_wn19_base"
    },
    {
      id   = "i-0c9724f437a58b97f",
      name = "lcmp_app_scan_a"
    },
    {
      id   = "i-03bdfdbc210fb2ded",
      name = "lcmp_wn19_bu7_a"
    },
    {
      id   = "i-0c4640ebfaff99cbd",
      name = "temp_wsus"
    },
    {
      id   = "i-065f5102e025e9e05",
      name = "lcmp_wn19_bu6_a"
    },
    {
      id   = "i-049aa778e348f2a4e",
      name = "lcmp_tbl1_a"
    },
    {
      id   = "i-09d658ca80769673c",
      name = "lcmp_rh8_atl1_a"
    },
    {
      id   = "i-06a8a1913d9ea5e76",
      name = "lcmp_rh8_atl2_a"
    },
    {
      id   = "i-0d707e22b91c5c19c",
      name = "lcmp_wn19_ds1_a"
    },
    {
      id   = "i-09c342df9e0dd5513",
      name = "lcmp_bu5_a"
    },
    {
      id   = "i-03456a28a1a20600f",
      name = "cr_ami"
    },
    {
      id   = "i-0835631712fda442f",
      name = "lcmp_wn19_base_122122"
    },
    {
      id   = "i-0cf818d69c929bc3a",
      name = "lcmp_ado_app2_e"
    },
    {
      id   = "i-035d65fcd51b28227",
      name = "lcmp_ado_app1_e"
    },
    {
      id   = "i-00f5e85cf058c1d77",
      name = "lcmp_wn19_bu2_a"
    },
    {
      id   = "i-07c0b064491d14889",
      name = "lcmp_wn19_bu1_a"
    },
    {
      id   = "i-0b3cbbd83fa803679",
      name = "temp_bu5"
    },
    {
      id   = "i-081f5f20ecfe0f9e4",
      name = "lcmp_gitlab_a"
    },
    {
      id   = "i-0fe2bff69bb403ecc",
      name = "cr_ami_2"
    },
    {
      id   = "i-029bb7a7f32388e4a",
      name = "temp_linux_build_server"
    },
    {
      id   = "i-0d20158a541439369",
      name = "lcmp_test_bu6_d"
    },
    {
      id   = "i-075766693610b607f",
      name = "lcmp_bu8_a"
    },
    {
      id   = "i-0b9c8a74ca480855c",
      name = "lcmp_cr_main_d"
    },
    {
      id   = "i-041bc7c928d4045fd",
      name = "lcmp_crtest"
    },
    {
      id   = "i-03a4f4356324ac7d7",
      name = "lcmp_cr_2023_12_13_ref_update"
    },
    {
      id   = "i-093c8b07d4caecb40",
      name = "lcmp_cr77_d"
    },
    {
      id   = "i-0c7ee221c57805666",
      name = "lcmp_vulcan_dev"
    },
    {
      id   = "i-0abbe56cd663b6679",
      name = "lcmp_cvat"
    },
    {
      id   = "i-04f407001aad8b8fe",
      name = "report_server_test"
    },
    {
      id   = "i-04b0ca5f3c37d1ce5",
      name = "strata_proto_pipeline_agent_4"
    },
    {
      id   = "i-06b0972f77dde665d",
      name = "strata_proto_pipeline_agent_1"
    },
    {
      id   = "i-09de20faaff1f6121",
      name = "lcmp_cr78_d"
    },
    {
      id   = "i-0e90ab70f6155121e",
      name = "lcmp_cr_future_d"
    },
    {
      id   = "i-06b2d0ba81313c18f",
      name = "strata_proto_pipeline_agent_3"
    },
    {
      id   = "i-0d89d617ad82099f8",
      name = "strata_proto_pipeline_agent_2"
    },
    {
      id   = "i-0079d887d704cc06e",
      name = "lcmp_cr_test_d"
    },
    {
      id   = "i-06a6bb0ab02dadef0",
      name = "strata_proto_power_bi"
    },
    {
      id   = "i-0ba0f66f1095e0ea8",
      name = "hyper_glance"
    },
    {
      id   = "i-07c36e31bdbd38f9c",
      name = "strata_proto_worker"
    },
    {
      id   = "i-0aaa7f7a141c45c2c",
      name = "strata_proto_worker"
    },
    {
      id   = "i-05cd9e7604a2db6b3",
      name = "lcmp_wn19_db1_a"
    },
    {
      id   = "i-0d524448c4b363cf7",
      name = "strata_proto_worker"
    },
  ]
}
