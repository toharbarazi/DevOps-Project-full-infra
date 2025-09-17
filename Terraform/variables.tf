variable "aws_region" {
    description = "AWS region to use"
    type        = string
    default     = "us-east-1" 
}

###########################################################################################

#ECR

variable "ECR_repo_name" {
    description = "Name of the ECR repo"
    type        = string
    default     = "full_infra_repo"
}

###########################################################################################

#EC2

variable "EC2_name" {
    description = "Name of the ECR repo"
    type        = string
    default     = "full_infra_k8s"
}

variable "security_group_name" {
    description = "name of security group for EC2 "
    type        = string
    default     = "EC2_full_infra_sg"
}



variable "instance_type" {
  default = "t3.medium"
}

variable "ami_id" {
  description = "Ubuntu AMI ID for your region"
  type        = string
}

variable "key_pair_name" {
  description = "Name of existing AWS key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to your public key file"
  type        = string
}



