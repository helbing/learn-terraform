variable "name" {
  description = "Name of VPC"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "(Optional) IPv4 CIDR"
  type        = string
  default     = "10.0.0.0/24"
}

variable "tags" {
  description = "VPC tags"
  type        = map(string)
  default     = {}
}

variable "subnet_enabled" {
  description = "Enable subnets"
  type        = bool
  default     = false
}

variable "subnet_cidr" {
  description = "(Optional) Subnet IPv4 CIDR"
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_az" {
  description = "(Optional) Availability zone for the subnet"
  type        = string
  default     = ""
}
