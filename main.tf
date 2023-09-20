locals {
  tags = merge(
    {
      Created = "${timestamp()}"
    },
    var.tags
  )
}

module "dynamodb" {
  source = "./modules/dynamodb"

  name = var.dynamodb_name

  billing_mode = var.dynamodb_billing_mode
  read_capacity = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity

  hash_key = var.dynamodb_hash_key

  tags = local.tags
}

module "s3" {
  source = "./modules/s3"

  bucket = var.s3_bucket

  tags = local.tags
}