# Universal Terraform RDS Module

This repository contains a reusable Terraform module that provisions:

- Standard MySQL RDS instance (use_aurora = false)
- Aurora MySQL cluster (use_aurora = true)

## Usage

module "rds" {
  source = "./modules/rds"

  project_name   = "example"
  use_aurora     = false

  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.micro"
  multi_az       = false

  vpc_id     = "vpc-xxxx"
  subnet_ids = ["subnet-a", "subnet-b"]

  db_username = "admin"
  db_password = "password123"
}

## Cleanup

terraform destroy
