provider "aws" {
    region = var.aws_region
}

module "ECR" {
    source="./modules/ECR"
    ECR_repo_name = var.ECR_repo_name
}

module "EC2" {
    source="./modules/EC2"
    EC2_name = var.EC2_name
    public_subnet_id = module.VPC.public_subnet_id
}

module "VPC" {
    source="./modules/VPC"
}