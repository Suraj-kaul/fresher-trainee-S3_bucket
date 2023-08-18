terraform {
  backend "s3" {
    bucket = "tear-test-bucket"
    key    = "sk.tfstate"
    region = "us-east-1"
  }
}