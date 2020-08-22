resource "aws_vpc" "personal" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    Name = "personal"
  }
}

resource "aws_subnet" "personal_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "personal_subnet"
  }
}

output "vpc_id" {
  value = aws_vpc.personal.id
}

output "subnet_id" {
	value = aws_subnet.personal_subnet.id
}
