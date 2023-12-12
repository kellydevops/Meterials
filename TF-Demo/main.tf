provider "aws" {
   region = "us-west-2"
   
}

resource "aws_instance" "test" {
  ami = "ami-0ab193018f3e9351b"
  instance_type = "t2.micro"
  tags = {
    name = "testec2"
  }
}

resource "aws_s3_bucket" "demobkt" {
    bucket = "kelytests3bkt"
}

resource "aws_vpc" "main" {
    cidr_block = "192.168.0.0/16"
    tags = {
      name = "testvpc"
    }
  
}

resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.0.0/24"
    tags = {
        name = "public sbunet"
    }
  
}

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.1.0/24"
    tags = {
        name = "private vpc"
    }
  
}