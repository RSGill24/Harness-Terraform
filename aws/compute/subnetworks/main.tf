resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet"  "subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone = var.availability_zone
  tags = {
      Name = var.subnet_name
  }
}
