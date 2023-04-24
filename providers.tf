terraform {
  backend "s3" {
    dynamodb_table = "State-lock1789s"
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configuring the AWS Provider Region
provider "aws" {
  region = "us-east-1"
}

