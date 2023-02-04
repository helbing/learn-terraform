
output "vpc_id" {
  description = "VPC ID"
  value       = module.simple_vpc.vpc_id
}

output "name" {
  description = "VPC name"
  value       = module.simple_vpc.name
}

output "arn" {
  description = "ARN"
  value       = module.simple_vpc.arn
}
