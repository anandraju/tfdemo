provider "aws" {
  region = "us-east-2"
}

module "my_personal_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = "module.my_peronal.vpc.vpc.id"
  subnet_cidr = "192.168.1.0/24"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-07c8bc5c1ce9598c3"
  instance_type = "t2.micro"
  subnet_id     = "module.my_ec2.subnet_id"
}
