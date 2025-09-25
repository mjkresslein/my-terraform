locals {
  route53_records = [
    {
      id   = "Z3BNNKQ6SCBA0S_lcmp.us_NS",
      name = "lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_lcmp.us_SOA",
      name = "lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S__amazonses.lcmp.us_TXT",
      name = "_amazonses_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S__amazonsesstaging.lcmp.us_TXT",
      name = "_amazonsesstaging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_development.lcmp.us_A",
      name = "development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_accounts.development.lcmp.us_A",
      name = "accounts_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_anylogic.development.lcmp.us_A",
      name = "anylogic_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_bitbucket.development.lcmp.us_A",
      name = "bitbucket_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_confluence.development.lcmp.us_A",
      name = "confluence_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_cvat.development.lcmp.us_A",
      name = "cvat_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_cvat2.development.lcmp.us_A",
      name = "cvat2_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_dbsign.development.lcmp.us_A",
      name = "dbsign_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_devops.development.lcmp.us_A",
      name = "devops_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_ghost.development.lcmp.us_A",
      name = "ghost_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_gitlab.development.lcmp.us_A",
      name = "gitlab_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_grafana.development.lcmp.us_A",
      name = "grafana_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_internal.development.lcmp.us_A",
      name = "internal_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_jira.development.lcmp.us_A",
      name = "jira_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_login.development.lcmp.us_A",
      name = "login_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_logincore.development.lcmp.us_A",
      name = "logincore_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_matomo.development.lcmp.us_A",
      name = "matomo_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_members.development.lcmp.us_A",
      name = "members_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_ncetinput.development.lcmp.us_A",
      name = "ncetinput_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_ncetoutput.development.lcmp.us_A",
      name = "ncetoutput_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_pbirs.development.lcmp.us_A",
      name = "pbirs_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_prometheus.development.lcmp.us_A",
      name = "prometheus_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_rabbitmq.development.lcmp.us_A",
      name = "rabbitmq_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_radiant.development.lcmp.us_A",
      name = "radiant_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_rancher.development.lcmp.us_A",
      name = "rancher_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_reporting.development.lcmp.us_A",
      name = "reporting_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_sq.development.lcmp.us_A",
      name = "sq_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_sqdevops.development.lcmp.us_A",
      name = "sqdevops_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_strata-ai.development.lcmp.us_A",
      name = "strata_ai_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_strata-ka.development.lcmp.us_A",
      name = "strata_ka_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_strata.development.lcmp.us_A",
      name = "strata_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_svn.development.lcmp.us_A",
      name = "svn_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_tableau.development.lcmp.us_A",
      name = "tableau_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_tfs.development.lcmp.us_A",
      name = "tfs_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vc25a-interactive.development.lcmp.us_A",
      name = "vc25a_interactive_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vpn.development.lcmp.us_A",
      name = "vpn_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vulcan.development.lcmp.us_A",
      name = "vulcan_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vulcan2.development.lcmp.us_A",
      name = "vulcan2_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vulcan2024.development.lcmp.us_A",
      name = "vulcan2024_development_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_staging.lcmp.us_A",
      name = "staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S__amazonses.staging.lcmp.us_TXT",
      name = "_amazonses_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_login.staging.lcmp.us_A",
      name = "login_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_login2.staging.lcmp.us_A",
      name = "login2_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_logincore.staging.lcmp.us_A",
      name = "logincore_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_members.staging.lcmp.us_A",
      name = "members_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_members2.staging.lcmp.us_A",
      name = "members2_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vpn.staging.lcmp.us_A",
      name = "vpn_staging_lcmp_us"
    },
    {
      id   = "Z3BNNKQ6SCBA0S_vpn2.staging.lcmp.us_A",
      name = "vpn2_staging_lcmp_us"
    },
    {
      id   = "Z09865722EYB36JO6HH2W_lcmp.com_NS",
      name = "lcmp_com"
    },
    {
      id   = "Z09865722EYB36JO6HH2W_lcmp.com_SOA",
      name = "lcmp_com"
    },
    {
      id   = "Z09865722EYB36JO6HH2W_efsuseast1a.fs-05ceea5f0da7f88ba.lcmp.com_CNAME",
      name = "efsuseast1a_fs_05ceea5f0da7f88ba_lcmp_com"
    },
    {
      id   = "Z09865722EYB36JO6HH2W_efsuseast1a.fs-070ec79ce598a7d14.lcmp.com_CNAME",
      name = "efsuseast1a_fs_070ec79ce598a7d14_lcmp_com"
    },
    {
      id   = "Z09865722EYB36JO6HH2W_efsuseast1a.fs-0d19acced0159950d.lcmp.com_CNAME",
      name = "efsuseast1a_fs_0d19acced0159950d_lcmp_com"
    },
  ]
}
