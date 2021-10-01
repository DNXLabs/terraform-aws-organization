resource "aws_organizations_organization" "org" {
  count = var.already_exists ? 0 : 1

  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    var.enable_aws_sso ? "sso.amazonaws.com" : "",
  ]

  enabled_policy_types = ["SERVICE_CONTROL_POLICY"]

  feature_set = "ALL"
}

data "aws_organizations_organization" "existing" {
  count = var.already_exists ? 1 : 0
}
