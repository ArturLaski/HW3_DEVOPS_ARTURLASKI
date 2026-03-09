module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
  aws_region   = var.aws_region
  tags         = var.tags
}

module "ecr" {
  source          = "./modules/ecr"
  project_name    = var.project_name
  repository_name = var.ecr_repository_name
  tags            = var.tags
}

module "eks" {
  source             = "./modules/eks"
  project_name       = var.project_name
  cluster_version    = var.cluster_version
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  tags               = var.tags
}

module "jenkins" {
  source            = "./modules/jenkins"
  namespace         = var.jenkins_namespace
  chart_version     = var.jenkins_chart_version
  
  depends_on = [module.eks]
}

module "argo_cd" {
  source            = "./modules/argo_cd"
  charts_repo_url   = var.charts_repo_url
  app_namespace     = var.app_namespace
  namespace         = var.argocd_namespace
  chart_version     = var.argocd_chart_version
  
  depends_on = [module.eks]
}
