variable "aws_region" {
  description = "aws default region to create the AWS resources"
  default     = "us-east-1"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block of the production VPC"
  default     = "10.10.0.0/16"
  type        = string
}

variable "vpc_name" {
  description = "The name of the production VPC"
  default     = "main"
  type        = string
}

