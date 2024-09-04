resource "aws_s3_bucket" "main" {
  bucket = "${local.name_prefix}-main-s3-${local.name_suffix}"
  tags = {
    Name = "${local.name_prefix}-main-s3-${local.name_suffix}"
  }
  force_destroy = true
}