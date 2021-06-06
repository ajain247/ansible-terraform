provider "aws"{
    region = var.region
    alias = "east"
}

resource "aws_instance" "my-app-server"{
    provider = aws.east
    instance_type = var.instance_type
    ami_id = var.ami_id

    tags = {
        Name = var.instance_name
    }
}