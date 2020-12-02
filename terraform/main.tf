provider "aws" {}

resource "aws_s3_bucket" "bucket" {
  bucket = "eld-environments-test"
  acl    = "private"

  tags = {
    Env = Test
  }
}