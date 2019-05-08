# Configure the AWS Provider

provider "aws" {
  region     = "us-east-2"
}

# Configure the S3 Bucket

resource "aws_s3_bucket" "b" {
  bucket = "tuffy03-snow-demo-bucket04"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
