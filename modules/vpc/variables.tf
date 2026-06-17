variable "name_prefix" {
  description = "prefix for all the resource name. Format: <company>-<environment>-<region_short>"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "The vpc_cidr must be a valid CIDR block."
  }
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = list(string)
}

variable "database_subnet_cidr" {
  description = "CIDR block for the database subnet"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT Gateway for private subnets"
  type        = bool
  default     = false
}

variable "single_nat_gateway" {
  description = "use one nat gateway for all availability zones or one nat gateway per availability zone"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
