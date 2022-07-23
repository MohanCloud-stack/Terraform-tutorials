terraform {
  backend "s3" {
    bucket = "terraform-state-demo01"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}