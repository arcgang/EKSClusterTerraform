# output variables

output "region" {
  description = "AWS region"
  value       = var.region
}

output "vpc_id" {
    description = "VPC"
    value = module.vpc.vpc_id
}

output "security_group_ids" {
    description = "Security Groups"
    value = [aws_security_group.all_worker_mgmt.id, aws_security_group.worker_group_mgmt_two.id]
}

output "private_subnets" {
    description = "Private Subnets"
    value = module.vpc.private_subnets
}

output "vpc_cidr_block" {
    description = "VPC CIDR block"
    value = module.vpc.vpc_cidr_block
}
