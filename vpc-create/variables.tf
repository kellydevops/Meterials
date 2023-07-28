variable "aws_region" {
  type = string
  #default = "us-west-2"
}
variable "vpc_name" {
  type = string
  #default = "testvpc"
}

variable "cidr_block" {
  type = list
  #default = ["192.168.0.0/16","192.168.0.0/24","192.168.1.0/24"]
}

variable "subnet_name" {
    type = list
    #default = ["sn1","sn2"]
  
}