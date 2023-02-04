variable "name" {
  description = "(Optional) Name of VPC"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "(Optional) IPv4 CIDR"
  type        = string
  default     = "10.0.0.0/24"
}

variable "tags" {
  description = "(Optional) VPC tags"
  type        = map(string)
  default     = {}

  validation {
    condition     = length(var.tags) <= 10
    error_message = "Length of tags must less than 10."
  }
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
  default     = "ap-northeast-1a"

  validation {
    condition     = startswith(var.subnet_az, "ap-")
    error_message = "Subnet AZ must in Asia Pacific."
  }
}
