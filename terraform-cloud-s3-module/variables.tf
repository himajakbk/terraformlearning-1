variable "name_bucket" {
  description = "Bucket Name"
  type        = string
}

variable "tags_bucket" {
  description = "Tags for bucket"
  type        = map(string)
  default     = {}
}
