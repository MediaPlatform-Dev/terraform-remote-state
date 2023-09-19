# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  description = "AWS region"
  type        = string
}

variable "tags" {}


# dynamodb

variable "dynamodb_name" {}

variable "dynamodb_billing_mode" {}

variable "dynamodb_read_capacity" {}

variable "dynamodb_write_capacity" {}

variable "dynamodb_hash_key" {}


# s3

variable "s3_bucket" {}