terraform {
  required_version = ">= 1.7.5"

  cloud {
    organization = "soat-tech-challenge"

    workspaces {
      name    = "staging"
      project = "Hackaton"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.41"
    }
  }
}

provider "aws" {
  region = var.aws_region

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_session_token

  default_tags {
    tags = {
      Organization = "soat-tech-challenge"
      Project      = "Hackaton"
    }
  }
}
