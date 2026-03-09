variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes cluster version"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS cluster will be deployed"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for EKS cluster"
  type        = list(string)
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}
