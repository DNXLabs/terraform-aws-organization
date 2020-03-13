resource "aws_organizations_policy" "config" {
  count = var.already_exists ? 0 : 1
  name  = "config"

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


  depends_on = [aws_organizations_organization.org[0]]
}

resource "aws_organizations_policy_attachment" "config_root" {
  count     = var.already_exists ? 0 : 1
  policy_id = aws_organizations_policy.config[0].id
  target_id = aws_organizations_organization.org[0].roots[0]["id"]
}
