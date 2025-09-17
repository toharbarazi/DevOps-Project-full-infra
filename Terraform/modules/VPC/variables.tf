variable "aws_region" {
  description = "AWS region to use"
  type        = string
}

variable "instance_type" {
  description = "instance_type"
  type        = string
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
