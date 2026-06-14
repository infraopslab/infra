variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "rds_class" {
  type = string
}

variable "rds_storage" {
  type = number
}

variable "asg_min" {
  type = number
}

variable "asg_max" {
  type = number
}

variable "asg_desired" {
  type = number
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}
variable "certificate_arn" {
  type = string
}
