# Output definitions

#ARN
output "bucket_arn" {
  description = "Bucket ARN"
  value = module.s3module.arn 
}

#Bucket Name
output "bucket_name" {
  description = "Bucket Name"
  value = module.s3module.name
}

#Domain
output "bucket_domain" {
  description = "domain_of_bucket"
  value = module.s3module.domain
}

#Bucket URL
output "Bucket_URL" {
  description = "URL OF BUCKET"
  value = module.s3module.endpoint
}
