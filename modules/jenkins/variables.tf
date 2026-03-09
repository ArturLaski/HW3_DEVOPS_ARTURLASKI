variable "namespace" {
  description = "Kubernetes namespace for Jenkins deployment"
  type        = string
  default     = "jenkins"
}

variable "chart_version" {
  description = "Jenkins Helm chart version"
  type        = string
  default     = "5.8.12"
}
