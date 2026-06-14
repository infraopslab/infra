terraform {
  backend "s3" {
    bucket       = "tf-state-test-613025568883"
    key          = "test/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}
