# environments/prod/locals.tf
locals {
  company      = "myco"
  environment  = "prod"
  region       = "ap-south-1"
  region_short = "aps1"
  name_prefix  = "${local.company}-${local.environment}-${local.region_short}"
  common_tags = {
    Company     = local.company
    Environment = local.environment
    ManagedBy   = "terraform"
    Repository  = "https://github.com/infraopslab/infra"
    CostCenter  = "engineering"
  }
}
