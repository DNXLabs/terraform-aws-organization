output "organization_id" {
  value       = "${aws_organizations_organization.org.id}"
  description = "ID of organization created"
}

output "organization_root_id" {
  value       = "${data.external.organizations_roots.result.id}"
  description = "ID of the root Organizational Unit of the organization created"
}
