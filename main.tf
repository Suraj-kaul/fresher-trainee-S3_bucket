resource "aws_s3_bucket" "S3" {
  bucket = var.buckets
  acl= var.acl
  

  tags = var.tags


}
