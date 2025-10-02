module "sg_allow_ssh" {
    source = "../../../modules/security_group/allow_ssh/"
    sg_name = "allow_ssh"
    sg_description = "Allow SSH access"
    sg_cidr_blocks = ["0.0.0.0/0"]
    port = 22
}

module "sg_allow_k8s_connection" {
    source = "../../../modules/security_group/allow_ssh/"
    sg_name = "allow_k8s_connection"
    sg_description = "Allow Kubernetes API access"
    sg_cidr_blocks = ["0.0.0.0/0"]
    port = 6443
}