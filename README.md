# terraform-aws-organization

This terraform module creates a simple AWS organization.

## Usage

```hcl
module "org" {
  source = "git::https://github.com/DNXLabs/terraform-aws-organization.git?ref=0.0.2"
}
```

Deploy this module to your _master_ account.

## Outputs

| Name | Description |
|------|-------------|
| organization\_id | ID of organization created |
| organization\_root\_id | ID of the root Organizational Unit of the organization created |

## Authors

Module managed by [Allan Denot](https://github.com/adenot).

## License

Apache 2 Licensed. See LICENSE for full details.