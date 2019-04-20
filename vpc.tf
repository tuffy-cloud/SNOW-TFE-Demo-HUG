# Configure the AWS Provider

provider "aws" {
  region     = "us-west-1"
}

# Configure the VPC

resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
