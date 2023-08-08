resource "bucket_s3_terraform_cloud" {
  bucket = var.name_bucket  
  policy = <<EOF

 PublicAccessBlockConfiguration:
          BlockPublicAcls:  "public-read" -> null
        OwnershipControls:
          Rules:
            - ObjectOwnership: ObjectWriter
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::${var.name_bucket}/*"
          ]
      }
  ]
}  
EOF
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags          = var.tags_bucket
  force_destroy = true
}
