terraform {
  backend "s3" {
    bucket       = "tf-state-prod-940278682470"
    key          = "prod/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}
