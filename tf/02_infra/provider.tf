provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = "1.5.1"

  backend "s3" {
    region = "ap-southeast-1"
    bucket = "xpertsummit-remote-state-development-student01"
    key    = "terraform.tfstate"
  }
}
