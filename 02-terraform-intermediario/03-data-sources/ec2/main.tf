terraform {
  required_version = ">= 0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.23.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-387576892367"
    key    = "dev/03-data-sources/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}