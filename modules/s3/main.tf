resource "aws_s3_bucket" "this" {
  bucket = "${var.tags.Project}-${var.bucket}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  force_destroy = true

  tags = merge(
    {
      Name = "s3-${var.tags.Project}-${var.bucket}"
      Type = "s3"
    },
    var.tags
  )
}