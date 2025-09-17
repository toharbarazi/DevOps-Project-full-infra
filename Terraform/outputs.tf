output "ECR_repo_url" {
    value       = module.ECR.ECR_repo_url
    description = "The ECR repo URL "
}

output "public_subnet_id" {
    value = module.VPC.public_subnet_id
    description = "The public subnet id "
}
