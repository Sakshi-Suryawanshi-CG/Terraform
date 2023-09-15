output "id" {
  value       = module.aws_vpc.id
  description = "The ID of the aws vpc"
}
/*output "aws_instance_name" {
  description = "ARN of ec2 instance"
  value       = aws_instance.myec2.arn
  }*/