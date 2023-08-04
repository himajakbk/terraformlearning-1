# Output definitions

#ARN
output "bucket_arn" {
  description = "Bucket ARN"
  value = module.bucket_s3_terraform_cloud.arn 
}

#Bucket Name
output "bucket_name" {
  description = "Bucket Name"
  value = module.bucket_s3_terraform_cloud.name
}

#Domain
output "bucket_domain" {
  description = "domain_of_bucket"
  value = module.bucket_s3_terraform_cloud.domain
}

#Bucket URL
output "Bucket_URL" {
  description = "URL OF BUCKET"
  value = module.bucket_s3_terraform_cloud.endpoint
}
