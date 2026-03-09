variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}
