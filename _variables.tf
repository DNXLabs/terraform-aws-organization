variable "name" {
  description = "Name for this organization (not actually used in API call)"
}

variable "already_exists" {
  default     = false
  description = "Whether the organization already exists or needs to be created"
}

variable "enable_aws_sso" {
  default     = false
  description = "Whether the AWS SSO needs to be enabled when creating a new organisation"
}

variable "enable_compute_optimizer" {
  default     = false
  description = "Whether the AWS Compute Optimizer needs to be enabled when creating a new organisation"
}

variable "enable_cost_optimizer" {
  default     = false
  description = "Whether the AWS Compute Optimize needs to be enabled when creating a new organisation"
}