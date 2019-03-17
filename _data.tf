data "external" "organizations_roots" {
  program = ["aws", "organizations", "list-roots", "--query", "Roots[0].{id:Id}"]
}
