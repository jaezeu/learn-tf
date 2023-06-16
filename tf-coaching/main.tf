resource "aws_dynamodb_table" "personal_table" {
  name         = "jaz-ddb-import" #Use your own table name here
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}
