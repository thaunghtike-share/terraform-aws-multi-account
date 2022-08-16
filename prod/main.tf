terraform {
  backend "remote" {
    organization = "astradot"
    workspaces {
      name = "interview"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}