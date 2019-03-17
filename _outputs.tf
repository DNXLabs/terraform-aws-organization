output "organization_id" {
  value = "${aws_organizations_organization.org.id}"
}

output "organization_root_id" {
  value = "${data.external.organizations_roots.result.id}"
}
