resource "aws_s3_bucket" "aws_s3_bucket_terraform_cloud" {
  bucket = "ar.name_bucket"
}

resource "aws_s3_bucket_ownership_controls" "aws_s3_bucket_terraform_cloud" {
  bucket = aws_s3_bucket.aws_s3_bucket_terraform_cloud.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "aws_s3_bucket_terraform_cloud" {
  bucket = aws_s3_bucket.aws_s3_bucket_terraform_cloud.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "aws_s3_bucket_terraform_cloud" {
  depends_on = [
    aws_s3_bucket_ownership_controls.aws_s3_bucket_terraform_cloud,
    aws_s3_bucket_public_access_block.aws_s3_bucket_terraform_cloud,
  ]

  bucket = aws_s3_bucket.aws_s3_bucket_terraform_cloud.id
  acl    = "public-read"
}
