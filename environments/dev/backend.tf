terraform {
  backend "s3" {
    bucket       = "tf-state-dev-538783576448"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}
