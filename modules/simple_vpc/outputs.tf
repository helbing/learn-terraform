output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "arn" {
  description = "ARN"
  value       = aws_vpc.this.arn
}
