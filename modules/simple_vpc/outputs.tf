output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "name" {
  description = "VPC name"
  value       = local.name
}

output "arn" {
  description = "ARN"
  value       = aws_vpc.this.arn
}
