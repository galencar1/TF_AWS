terraform {
  required_version = ">=0.14.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-teste-08547"

  tags = {
    Name       = "My-First-Bucket"
    Enviroment = "Dev"
    ManagedBy  = "Terraform"
    Owner      = "Gabriel Alencar"
    UpdatedAt  = "2022-07-18"
  }
}