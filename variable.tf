variable "buckets"{
    type = string
}

variable "tags"{
    type = map
}

variable "acl" {
  type = string
}

# terraform {
#   backend "s3" {
#     bucket = "s3tfstatebucket"
#     key    = "sk.tfstate"
#     region = "us-east-1"
#   }
# }