provider "aws" {
  region = "us-east-1"

}
resource "aws_instance" "intro" {
  ami                    = "ami-0cff7528ff583bf9a"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "ec2wem"
  vpc_security_group_ids = ["sg-04de39b5de5781af2"]
  tags = {
    "Name"    = "Terraform instance"
    "project" = "terradata"
  }

}