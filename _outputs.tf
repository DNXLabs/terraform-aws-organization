output "id" {
  value       = "${aws_organizations_organization.org.id}"
  description = "ID of organization created"
}

# output "root_id" {
#   value       = "${data.external.organizations_roots.result.id}"
#   description = "ID of the root Organizational Unit of the organization created"
# }

output "roots_id" {
  value       = "${aws_organizations_organization.org.roots}"
  description = "Roots of organization created"
}

output "name" {
  value = "${var.name}"
}

output "guardduty_id" {
  value       = "${aws_guardduty_detector.master.id}"
  description = "GuardDuty Detect ID for the master account"
}
