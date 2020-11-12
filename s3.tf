resource "aws_s3_bucket" "Bucket" {
  bucket = "guls3bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }
}
