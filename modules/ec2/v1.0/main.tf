provider "aws" {
    region = var.region
    profile = "default"
}

resource "aws_instance" "monitoring_vm" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    user_data = file("user_data.sh")
    vpc_security_group_ids = [aws_security_group.allow_exporter.id]
}

resource "aws_security_group" "allow_exporter" {
    name = "allow_exporter"
    description = "Allow node exporter port 9100"
    ingress {
        from_port = 9100
        to_port = 9100
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "allow_exporter"
    }   
}