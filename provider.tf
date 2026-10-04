terraform {
  required_version = "~>1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
  backend "s3" {
    bucket = "newproj-terraform-state"
    region = "eu-west-2"
    key    = "newproj-terraform.tfstate"
  }
}

provider "aws" {
  region  = "eu-west-2"
  profile = "target-account"
}


