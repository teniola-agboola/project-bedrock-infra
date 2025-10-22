############################################################
# Project Bedrock - Base Terraform Configuration
############################################################

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "bedrock-tfstate-teniola-state"
    key            = "terraform/bedrock/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "bedrock-tf-locks-teniola"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
