resource "random_integer" "suffix" {
  min = 1
  max = 50000
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.resource_prefix}-sctps3bucket-${random_integer.suffix.result}"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = var.versioning_status
  }
}

resource "aws_dynamodb_table" "personal_table" {
  count = var.create_dynamodb ? 1 : 0

  name         = "${var.resource_prefix}-sctpddb-${random_integer.suffix.result}"
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
