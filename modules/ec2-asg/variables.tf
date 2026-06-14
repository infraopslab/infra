variable "name_prefix" {}
variable "private_subnet_ids" {}
variable "app_sg_id" {}
variable "instance_type" {}
variable "target_group_arn" {}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}

variable "tags" {
  default = {}
}
