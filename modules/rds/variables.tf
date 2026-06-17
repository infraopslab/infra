variable "name_prefix" {}
variable "database_subnet_ids" {}
variable "db_sg_id" {}

variable "instance_class" {}
variable "allocated_storage" {}

variable "db_name" {}
variable "db_username" {}

variable "multi_az" {}
variable "deletion_protection" {}
variable "backup_retention_days" {}

variable "tags" {
  default = {}
}
