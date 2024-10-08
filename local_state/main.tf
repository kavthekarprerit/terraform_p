terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a2202cf4c36161a1"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

