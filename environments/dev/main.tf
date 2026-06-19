locals {
  #name_prefix = "myco-dev-use-1"
  azs = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

module "vpc" {
  source               = "../../modules/vpc"
  name_prefix          = local.name_prefix
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidr  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  database_subnet_cidr = ["10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24"]
  availability_zones   = local.azs
  enable_nat_gateway   = true
  single_nat_gateway   = true
  tags                 = local.tags
}

module "security-groups" {
  source      = "../../modules/security-groups"
  name_prefix = local.name_prefix
  vpc_id      = module.vpc.vpc_id
  vpc_cidr    = module.vpc.vpc_cidr
  tags        = local.tags
}

module "alb" {
  source              = "../../modules/alb"
  name_prefix         = local.name_prefix
  vpc_id              = module.vpc.vpc_id
  public_subnet_ids   = module.vpc.vpc_public_subnet_ids
  alb_sg_id           = module.security-groups.alb_sg_id
  certificate_arn     = var.certificate_arn
  deletion_protection = false
}

# Triggering pipeline check.
