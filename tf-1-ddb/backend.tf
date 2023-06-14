terraform {
  backend "s3" {
    bucket = "sctp-ce2-tfstate-bkt"
    key    = "jazeel-tf1-ddb.tfstate"
    region = "ap-southeast-1"
  }
}