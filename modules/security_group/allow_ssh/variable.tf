variable "sg_name" {
  default = ""
  type = string
}

variable "sg_description" {
  default = "Allow SSH access"
  type = string
}

variable "sg_cidr_blocks" {
  default = ["0.0.0.0/0"]
  type = list(string)
}

variable "port" {
  default = 22
  type = number
}