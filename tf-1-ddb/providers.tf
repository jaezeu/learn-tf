provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "ap-southeast-1"
}