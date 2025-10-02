data "aws_security_group" "existing" {
  name = "allow_ssh"
}

module "web" {
    source = "../../../modules/ec2/v2.0/"
    instance_type = "t2.medium"
    ami = "ami-0b3e7dd7b2a99b08d"
    ec2_name = "kubernetes-control-plane"
    security_group_ids = [data.aws_security_group.existing.id]   
}

module "control_plane2" {
    source = "../../../modules/ec2/v2.0/"
    instance_type = "t2.medium"
    ami = "ami-0b3e7dd7b2a99b08d"
    ec2_name = "kubernetes-control-plane2"
    security_group_ids = [data.aws_security_group.existing.id]   
}

module "worker1" {
    source = "../../../modules/ec2/v2.0/"
    instance_type = "t2.medium"
    ami = "ami-0b3e7dd7b2a99b08d"
    ec2_name = "kubernetes-worker-1"
    security_group_ids = [data.aws_security_group.existing.id]
}

module "worker2" {
    source = "../../../modules/ec2/v2.0/"
    instance_type = "t2.medium"
    ami = "ami-0b3e7dd7b2a99b08d"
    ec2_name = "kubernetes-worker-2"
    security_group_ids = [data.aws_security_group.existing.id]
}
