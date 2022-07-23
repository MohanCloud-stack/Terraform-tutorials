variable "REGION" {
  default = "us-east-1"
}
variable "ZONE1" {
  default = "us-east-1b"
}
variable "ZONE2" {
  default = "us-east-1c"
}
variable "ZONE3" {
  default = "us-east-1d"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-0cff7528ff583bf9a"
  }

}
variable "USER" {
  default = "ec2-user"
}
variable "PUB_KEY" {
  default = "dovekey.pub"
}
variable "PRIV_KEY" {
  default = "dovekey"
}