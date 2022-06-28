terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.8.0"
    }
  }
    # backend "s3" {
    #     bucket = "terraform-aaa-rbp-bucket"
    #     key    = "state/terraform_state.tfstate"
    #     region = "us-east-1"
    # }
}

provider "aws" {
  region     = var.aws_region
#   access_key = var.aws_access_key
#   secret_key = var.aws_secret_key
}