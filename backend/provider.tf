terraform {

  required_version = ">= 1.5.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50"
    }
  }

backend "s3" {
    bucket         = "tushar-terraform-state-bucket"
    key            = "eks/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  } 

provider "aws" {
  region = "us-east-1"
}
