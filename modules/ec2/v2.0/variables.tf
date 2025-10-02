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

variable "ec2_name" {
    default = ""
    type = string
}

variable "security_group_ids" {
  type = list(string)
  default = [ "sg-004b331539657e66f" ]
}