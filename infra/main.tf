terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "afayes2"
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fc15d50d39e4503c"
  instance_type = "t2.micro"
  key_name = "test3"

  tags = {
    Name = var.instance_name
  }
}

