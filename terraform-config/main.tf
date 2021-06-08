provider "aws" {
  region = var.region
  alias  = "east"
}

resource "aws_instance" "my-app-server" {
  provider      = aws.east
  instance_type = var.instance_type
  ami        = var.ami_id

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "s3-bucket" {
  provider = aws.east
  bucket = var.bucketName
  acl    = "private"

  tags = {
    Name        = var.bucketNameTag
    Environment = var.environmentTag
  }
}
