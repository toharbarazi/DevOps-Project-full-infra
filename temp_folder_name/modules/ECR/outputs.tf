output "ECR_repo_url" {
  value       = aws_ecr_repository.ECR.repository_url
  description = "The URL of the ECR repo"
}
