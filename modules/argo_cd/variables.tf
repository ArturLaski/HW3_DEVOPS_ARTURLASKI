variable "namespace" {
  description = "Kubernetes namespace for ArgoCD deployment"
  type        = string
  default     = "argocd"
}

variable "chart_version" {
  description = "ArgoCD Helm chart version"
  type        = string
  default     = "7.6.12"
}

variable "charts_repo_url" {
  description = "Git repository URL containing application Helm charts"
  type        = string
  default     = "https://github.com/LaResistancePL/lesson-8-9-charts.git"
}

variable "app_namespace" {
  description = "Kubernetes namespace where the application will be deployed"
  type        = string
  default     = "django"
}
