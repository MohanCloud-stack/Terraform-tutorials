resource "aws_instance" "Terraforminstance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "ec2wem"
  vpc_security_group_ids = ["sg-04de39b5de5781af2"]
  tags = {
    "Name"    = "Terraforminstance"
    "project" = "terradata"
  }
}