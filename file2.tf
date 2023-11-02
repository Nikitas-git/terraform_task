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
  access_key = "AKIAYGINE7OCXPZP4KVE"
  secret_key = "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"
}

resource "aws_instance" "terraform_instance1" {
  ami           = "ami-05c0f5389589545b7"
  instance_type = "t2.micro"
  key_name="terraformtask1"

  tags = {
    Name = "terraformtask2"
  }
}

