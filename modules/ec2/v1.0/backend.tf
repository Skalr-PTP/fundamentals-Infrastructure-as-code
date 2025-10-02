terraform {
  backend "s3" {
    bucket         = "terraform2-state"
    key            = "demo/iac-terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "s3-lock-mech"
    encrypt        = true
  }
}