variable "REGION" {
  default = "us-east-1"
}
variable "ZONE1" {
  default = "us-east-1b"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-0cff7528ff583bf9a"
  }
}