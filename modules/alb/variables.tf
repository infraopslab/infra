variable "name_prefix" {}
variable "vpc_id" {}
variable "public_subnet_ids" {}
variable "alb_sg_id" {}
variable "certificate_arn" {}
variable "deletion_protection" {}
variable "tags" {
  default = {}
}
