locals {
  iam_saml_providers = [
    {
      id   = "arn:aws:iam::947132430921:saml-provider/AWSSSO_5f53733d507a2f72_DO_NOT_DELETE",
      name = "awssso_5f53733d507a2f72_do_not_delete"
    },
    {
      id   = "arn:aws:iam::947132430921:saml-provider/AWS_Appstream",
      name = "aws_appstream"
    },
    {
      id   = "arn:aws:iam::947132430921:saml-provider/AWS_AFNWC_CAMEO_Appstream",
      name = "aws_afnwc_cameo_appstream"
    },
    {
      id   = "arn:aws:iam::947132430921:saml-provider/f5_idp",
      name = "f5_idp"
    },
  ]
}
