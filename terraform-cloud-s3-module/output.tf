output "arn" {
  description = "ARN OF BUCKET"
  value       = aws_s3_bucket_terraform_cloud.arn
}

output "name" {
  description = "NAME OF BUCKET"
  value       = aws_s3_bucket_terraform_cloud.id
}

output "domain" {
  description = "MAIN DOMAIN OF BUCKET"
  value       = aws_s3_bucket_terraform_cloud.website_domain
}

output "endpoint" {
  description = "URL OF BUCKET"
  value       = aws_s3_bucket_terraform_cloud.website_endpoint
}
