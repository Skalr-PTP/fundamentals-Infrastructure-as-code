provider "aws" {
    region = var.region
    profile = "default"
}


resource "aws_key_pair" "ec2-ssh-key" {
  key_name   = "${var.ec2_name}-ssh-key"
  public_key = file("pub_key.pub")
}

resource "aws_instance" "control_vm" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = aws_key_pair.ec2-ssh-key.key_name
    user_data = file("user_data.sh")
    vpc_security_group_ids = var.security_group_ids
}