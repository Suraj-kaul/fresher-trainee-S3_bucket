module "s3"{
    source = "../"
    for_each = var.bucket
    buckets = each.key
    acl = each.value.acl
    tags= each.value.tags
    

}
