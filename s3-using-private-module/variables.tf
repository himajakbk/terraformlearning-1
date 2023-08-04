variable "aws_region" {
  description = "Region AWS"
  type = string
  #default = "ap-south-1"
}

variable "s3_bucket_name" {
  description = "s3_bucket_name"
  type = string
  #default = "sagarkaushalbucket101"
}


variable "s3_bucket_tag" {
  description = "s3_bucket_tag"
  type = map(string)
  default = {
    Purpose = "Terraform Cloud"
    Cloud = "AWS"
  }
}
