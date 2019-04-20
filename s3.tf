# Configure the AWS Provider

provider "aws" {
  region     = "us-east-2"
}

# Configure the S3 Bucket

resource "aws_s3_bucket" "b" {
  bucket = "tuffy1-snow-demo-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
