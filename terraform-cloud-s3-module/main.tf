rresource "aws_s3_bucket" "aws_s3_bucket_terraform_cloud" {
  bucket = "my-tf-aws_s3_bucket_terraform_cloud-bucket"
}

resource "aws_s3_bucket_ownership_controls" "aws_s3_bucket_terraform_cloud" {
  bucket = aws_s3_bucket.aws_s3_bucket_terraform_cloud.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "aws_s3_bucket_terraform_cloud" {
  depends_on = [aws_s3_bucket_ownership_controls.aws_s3_bucket_terraform_cloud]

  bucket = aws_s3_bucket.aws_s3_bucket_terraform_cloud.id
  acl    = "private"
}
