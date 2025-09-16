variable "aws_region" {
    description = "AWS region to use"
    type        = string
    default     = "us-east-1" 
}

variable "ECR_repo_name" {
    description = "Name of the ECR repo"
    type        = string
    default     = "full_infra_repo"
}
