
output "vpc_id" {
  description = "VPC ID"
  value       = module.simple_vpc.vpc_id
}

output "arn" {
  description = "ARN"
  value       = module.simple_vpc.arn
}
