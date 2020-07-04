output "region" {
  description = "AWS region"
  value       = var.region
}

output "vpc_id" {
    description = "VPC"
    value = module.vpc.id
}

output "security_group_ids" {
    description = "Security Groups"
    value = [aws_security_group.all_worker_mgmt.id, aws_security_group.worker_group_mgmt_two]
}
