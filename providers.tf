terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    
  }
}

# Configuring the AWS Provider Region
provider "aws" {
  region = "us-east-1"
}

