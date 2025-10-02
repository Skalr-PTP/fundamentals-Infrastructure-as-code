resource "aws_security_group" "ingress_sg" {
    name = var.sg_name
    description = var.sg_description
    ingress {
        from_port = var.port
        to_port = var.port
        protocol = "tcp"
        cidr_blocks = var.sg_cidr_blocks
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.sg_cidr_blocks
    }
    tags = {
        Name = var.sg_name
    }
}