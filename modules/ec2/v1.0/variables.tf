variable "region" {
    default = "eu-west-1"
    type = string  
}

variable "ami" {
    default = ""
    type = string  
}

variable "instance_type" {
    default = "t2.micro"
    type = string  
}

variable "key_name" {
    default = ""
    type = string
  
}