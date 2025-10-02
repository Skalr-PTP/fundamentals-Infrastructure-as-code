module "web" {
    source = "../../ec2/v1.0"
    instance_type = "t2.medium"
    ami = "ami-0b3e7dd7b2a99b08d"
    
  
}