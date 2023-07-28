provider "aws" {
    region = "us-west-2"
}
resource "aws_instance" "web" {
  ami           = "ami-08541bb85074a743a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_s3_bucket" "testbkt" {
  bucket = "mytftestbkt-kelly"

  tags = {
    Name        = "My bucket"
  }
}