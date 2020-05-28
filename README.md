# terraform-aws-organization

[![Lint Status](https://github.com/DNXLabs/terraform-aws-organization/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-organization/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-organization)](https://github.com/DNXLabs/terraform-aws-organization/blob/master/LICENSE)

This terraform module creates a simple AWS organization.

## Usage

```hcl
module "org" {
  source = "git::https://github.com/DNXLabs/terraform-aws-organization.git?ref=0.0.2"
}
```

Deploy this module to your _master_ account.

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-organization/blob/master/LICENSE) for full details.