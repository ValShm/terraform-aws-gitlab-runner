variable "environment" {
  description = "A name that identifies the environment, used as prefix and for tagging."
  type        = "string"
}

variable "cache_bucket_prefix" {
  description = "Prefix for s3 cache bucket name."
  type        = "string"
  default     = ""
}

variable "cache_bucket_versioning" {
  description = "Boolean used to enable versioning on the cache bucket, false by default."
  type        = "string"
  default     = "false"
}

variable "cache_expiration_days" {
  description = "Number of days before cache objects expires."
  default     = 1
}

variable "tags" {
  description = "Map of tags that will be added to created resources. By default resources will be tagged with name and environment."
  type        = "map"
  default     = {}
}

variable "create_cache_bucket" {
  description = "This module is by default included in the runner module. To disable the creation of the bucket this paramter can be disabled."
  type        = "string"
  default     = true
}
