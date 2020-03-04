variable "name" {
  description = "Name for this organization (not actually used in API call)"
}

variable "cloudtrail" {
  default     = true
  description = "Enable/Disables cloudtrail"
}
