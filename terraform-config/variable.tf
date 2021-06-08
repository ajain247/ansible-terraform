variable "instance_name" {
  type    = string
  default = "My-App-Server"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-0d5eff06f840b45e9"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "bucketName"{
  type    = string
  default = "my-bucket-aj6055"
}

variable "bucketNameTag"{
  type    = string
  default = "StaticFiles"
}

variable "environmentTag"{
  type    = string
  default = "Dev"
}
