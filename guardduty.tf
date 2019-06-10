resource "aws_guardduty_detector" "master" {
  enable = true
}

resource "aws_ssm_parameter" "guardduty_id" {
  name  = "/account/master/guardduty_id"
  type  = "String"
  value = "${aws_guardduty_detector.master.id}"
}
