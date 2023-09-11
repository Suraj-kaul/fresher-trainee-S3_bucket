terraform {
  backend "s3" {
    bucket = "hariomtrans"
    key    = "sk.tfstate"
    region = "us-east-2"
  }
}
