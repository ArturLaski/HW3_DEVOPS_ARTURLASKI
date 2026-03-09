variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "lesson-8-9"
}

variable "cluster_version" {
  description = "EKS cluster Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    Project = "lesson-8-9"
    Owner   = "Neoversity"
  }
}

variable "ecr_repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "django-app"
}

variable "jenkins_namespace" {
  description = "Kubernetes namespace for Jenkins"
  type        = string
  default     = "jenkins"
}

variable "jenkins_chart_version" {
  description = "Jenkins Helm chart version"
  type        = string
  default     = "5.8.12"
}

variable "argocd_namespace" {
  description = "Kubernetes namespace for ArgoCD"
  type        = string
  default     = "argocd"
}

variable "argocd_chart_version" {
  description = "ArgoCD Helm chart version"
  type        = string
  default     = "7.6.12"
}

variable "charts_repo_url" {
  description = "Git repository URL containing Helm charts"
  type        = string
  default     = "https://github.com/LaResistancePL/lesson-8-9-charts.git"
}

variable "app_namespace" {
  description = "Kubernetes namespace for application deployment"
  type        = string
  default     = "django"
}
