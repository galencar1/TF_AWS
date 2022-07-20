terraform {
  required_version = ">= 0.14.4"

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

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = {
    Description = "Stores terraform remote state files"
    ManagedBy   = "Terraform"
    Owner       = "Gabriel Alencar"
    CreatedAt   = "2022-07-19"
  }
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}