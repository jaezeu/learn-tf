variable "ddb_name" {
  type        = string
  description = "Name of the dynamodb table"
}

variable "billing_mode" {
  type        = string
  description = "Billing Mode. Either PAY_PER_REQUEST or PROVISIONED"
}