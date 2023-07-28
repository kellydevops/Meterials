provider "aws" {
  region = var.aws_region
}

terraform {
  cloud {
    organization = "kellydevopsdemo"
    

    workspaces {
      name = "test"
    }
  }
}

resource "aws_vpc" "main" {
    cidr_block = var.cidr_block[0]
    tags = {
      Name = var.vpc_name
    } 
}
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_block[1]
  tags = {
    Name = var.subnet_name[0]
  }
}
resource "aws_subnet" "subnet2" {
   vpc_id = aws_vpc.main.id
   cidr_block = var.cidr_block[2]
   tags = {
     Name = var.subnet_name[1]
   }
}