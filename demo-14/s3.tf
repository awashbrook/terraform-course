resource "aws_s3_bucket" "b" {
  bucket = "mybucket-c29df1-sfa0867s0af80ds9f8d7d"
  acl    = "private"

  tags = {
    Name = "mybucket-c29df1-sfa0867s0af80ds9f8d7d"
  }
}

