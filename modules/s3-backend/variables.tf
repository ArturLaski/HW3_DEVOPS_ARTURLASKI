variable "aws_region" {
  description = "AWS region for S3 backend"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "lesson-8-9"
}

variable "name_suffix" {
  description = "Unique suffix for S3 bucket name (must be globally unique)"
  type        = string
  default     = "changeme"
}
