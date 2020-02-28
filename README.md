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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Name for this organization (not actually used in API call) | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of organization created |
| name |  |
| root\_id | ID of the root Organizational Unit of the organization created |

## Authors

Module managed by [Allan Denot](https://github.com/adenot).

## License

Apache 2 Licensed. See LICENSE for full details.