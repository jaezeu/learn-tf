variable "versioning_status" {
  type    = string
  default = "Enabled"
}

variable "resource_prefix" {
  type    = string
  default = ""
}

variable "billing_mode" {
  type        = string
  description = "Billing Mode. Either PAY_PER_REQUEST or PROVISIONED"
  default     = "PAY_PER_REQUEST"
}

variable "create_dynamodb" {
  type    = bool
  default = false
}