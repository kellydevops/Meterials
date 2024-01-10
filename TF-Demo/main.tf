provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
    cidr_block = var.cidr_block[0]

 tags = {
    Name = var.tags[0]
 } 
 
  
}

resource "aws_subnet" "sub1" {
   vpc_id = aws_vpc.main.id
   cidr_block = var.cidr_block[1]

   tags = {
     Name = var.tags[1]
   }
}

resource "aws_subnet" "sub2" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_block[2]

  tags = {
    Name = var.tags[2]
  }
}




