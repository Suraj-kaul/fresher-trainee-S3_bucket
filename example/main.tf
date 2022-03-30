module "s3"{
    source = "../"
    for_each = var.bucket
    bucket = each.value
    

}