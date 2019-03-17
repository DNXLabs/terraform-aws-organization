resource "aws_organizations_policy" "cloudtrail" {
  name = "cloudtrail"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Action": [
        "cloudtrail:StopLogging",
        "cloudtrail:DeleteTrail"
      ],
      "Resource": "*"
    }
  ]
}
CONTENT

  depends_on = ["aws_organizations_organization.org"]
}

resource "aws_organizations_policy_attachment" "cloudtrail_root" {
  policy_id  = "${aws_organizations_policy.cloudtrail.id}"
  target_id  = "${data.external.organizations_roots.result.id}"
  depends_on = ["null_resource.enable_policies"]
}

resource "aws_organizations_policy" "config" {
  name = "config"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Action": [
        "config:DeleteConfigRule",
        "config:DeleteConfigurationRecorder",
        "config:DeleteDeliveryChannel",
        "config:StopConfigurationRecorder"
      ],
      "Resource": "*"
    }
  ]
}
CONTENT

  depends_on = ["aws_organizations_organization.org"]
}

resource "aws_organizations_policy_attachment" "config_root" {
  policy_id  = "${aws_organizations_policy.config.id}"
  target_id  = "${data.external.organizations_roots.result.id}"
  depends_on = ["null_resource.enable_policies"]
}

resource "null_resource" "enable_policies" {
  depends_on = ["aws_organizations_policy.config", "aws_organizations_policy.cloudtrail"]

  provisioner "local-exec" {
    command = "aws organizations enable-policy-type --root-id ${data.external.organizations_roots.result.id} --policy-type SERVICE_CONTROL_POLICY"
  }
}
