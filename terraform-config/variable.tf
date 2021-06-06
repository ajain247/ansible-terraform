variable "instance_name"{
    type = string
    default = "My-App-Server"
}

variable "instance_type"{
    type = string
    default = "t2.micro"
}

variable "ami_id"{
    type = string
    default = ""
}

variable "region"{
    type = string
    default = "us-east-1"
}

