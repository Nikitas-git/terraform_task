terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYGIN7OXPE"
  secret_key = "VsN//7GRl4n4nDgKutUqVkWd"
}

resource "aws_instance" "terraform_instance1" {
  ami           = "ami-05c0f5389589545b7"
  instance_type = "t2.micro"
  key_name="terraformtask1"

  tags = {
    Name = "terraformtask2"
  }
}

