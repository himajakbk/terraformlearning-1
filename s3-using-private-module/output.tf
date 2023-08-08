# Output definitions

#ARN
output "bucket_arn" {
  description = "Bucket ARN"
  value = module.aws_s3_bucket.aws_s3_bucket_terraform_cloud.arn 
}

#Bucket Name
output "bucket_name" {
  description = "Bucket Name"
  value = module.aws_s3_bucket.aws_s3_bucket_terraform_cloud.name
}

#Domain
output "bucket_domain" {
  description = "domain_of_bucket"
  value = module.aws_s3_bucket.aws_s3_bucket_terraform_cloud.domain
}

#Bucket URL
output "Bucket_URL" {
  description = "URL OF BUCKET"
  value = module.aws_s3_bucket.aws_s3_bucket_terraform_cloud.endpoint
}
