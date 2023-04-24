terraform {
  # backend "s3" {
  #   bucket = "Lock-bucket-17891s"
  #   dynamodb_table = "State-lock1789s"
  #   key = "terraform.tfstate"
  #   region = "us-east-1"
  #   encrypt = true
  # }
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

