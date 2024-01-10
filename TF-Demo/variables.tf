variable "region" {
  type        = string
  default = "us-west-2"
}

variable "tags" {
  type = list
  default = ["testvpc", "Public subnet", "private subnet"]
}

variable "cidr_block" {
  type = list
  default = ["192.168.0.0/16", "192.168.0.0/24", "192.168.1.0/24"]
}