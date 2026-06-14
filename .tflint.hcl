config {
  call_module_type = "local"
}

plugin "aws" {
  enabled = true
  version = "0.47.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

# =========================
# Core Terraform Rules
# =========================
rule "terraform_required_version"       { enabled = true }
rule "terraform_required_providers"     { enabled = true }
rule "terraform_naming_convention"      { enabled = true }
# rule "terraform_documented_variables"   { enabled = true }
# rule "terraform_documented_outputs"     { enabled = true }
rule "terraform_typed_variables"        { enabled = true }

rule "aws_instance_invalid_type"        { enabled = true }
rule "aws_instance_previous_type"       { enabled = true }
rule "aws_db_instance_default_parameter_group" { enabled = true }
