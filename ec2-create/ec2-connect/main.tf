provider "aws" {
  region = "us-west-2"
}
#creating key pair
resource "aws_key_pair" "example" {
  key_name   = "demo_key"
  public_key = file("./demo.pub")
}

#Assigning key par to instance

resource "aws_instance" "example" {
  key_name      = aws_key_pair.example.key_name
  ami           = "ami-00970f57473724c10"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-07ba58c4c9914f12a"]


#connecting ec2 instance with private key
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./demo")
    host        = self.public_ip
    timeout     = "1m"
    agent       = false
  }

#to execute commands once instance created using TF
  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install httpd",
      "sudo service httpd start"
    ]
  }
}

