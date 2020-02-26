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


  depends_on = [aws_organizations_organization.org]
}

resource "aws_organizations_policy_attachment" "config_root" {
  policy_id = aws_organizations_policy.config.id
  target_id = aws_organizations_organization.org.roots[0]["id"]
}
