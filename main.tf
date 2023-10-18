resource "aws_s3_bucket" "example" {
  bucket = "jaz-bucket-1239696823dd4"

  tags = {
    Environment = "Dev"
  }
}