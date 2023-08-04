module "bucket_s3_terraform_cloud" {
  source  = "app.terraform.io/sagarkaushalorganization/s3-module/cloud"
  version = "1.0.0"
  name_bucket = var.s3_bucket_name
  tags_bucket = var.s3_bucket_tag
}
