module "aws_s3_bucket_terraform_cloud" {
  source  = "app.terraform.io/himajakbkorganization/s3module/cloud"
  version = "1.0.0"
  name_bucket = var.s3_bucket_name
  tags_bucket = var.s3_bucket_tag
}
