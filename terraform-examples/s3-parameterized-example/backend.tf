terraform {
  backend "s3" {
    bucket = "sctp-ce2-tfstate"
    key    = "jazeel-tf1-s3.tfstate"
    region = "ap-southeast-1"
  }
}