provider "aws" {}

resource "aws_bucket" "bucket" {
  bucket = "eld-environments-test"
  acl    = "private"

  tags = {
    Env = Test
  }
}