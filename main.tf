provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

