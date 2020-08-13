# terraform-aws-organization

Terraform module to create a simple  AWS Organization.

This module requires:
 - Terraform Version >=0.12.20

This module verifies if the AWS organization exists, if not, It creates. 


[![Lint Status](https://github.com/DNXLabs/terraform-aws-organization/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-organization/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-organization)](https://github.com/DNXLabs/terraform-aws-organization/blob/master/LICENSE)


## Usage

```hcl
module "org" {
  source = "git::https://github.com/DNXLabs/terraform-aws-organization.git?ref=0.0.2"
}
```

Deploy this module to your _master_ account.

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| already\_exists | Whether the organization already exists or needs to be created | `bool` | `false` | no |
| name | Name for this organization (not actually used in API call) | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of organization created |
| name | n/a |
| roots\_id | Roots of organization created |

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-organization/blob/master/LICENSE) for full details.