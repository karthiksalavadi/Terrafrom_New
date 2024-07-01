provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04f8d7ed2f1a54b14"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

