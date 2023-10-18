resource "aws_dynamodb_table" "personal_table" {
  name         = var.ddb_name
  billing_mode = var.billing_mode
  hash_key     = "id"
  range_key    = "name"
  attribute {
    name = "id"
    type = "S"
  }
  attribute {
    name = "name"
    type = "S"
  }
}
