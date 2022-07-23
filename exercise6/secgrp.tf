resource "aws_security_group" "dove_sg" {
  name        = "dove-sg"
  vpc_id      = aws_vpc.dove.id
  description = "ssh grp for dove ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.dove.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow-ssh"
  }
}
