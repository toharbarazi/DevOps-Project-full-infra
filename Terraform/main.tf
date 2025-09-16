provider "aws" {
    region = var.aws_region
}

module "ECR" {
    source="./modules/ECR"
    ECR_repo_name = var.ECR_repo_name
}