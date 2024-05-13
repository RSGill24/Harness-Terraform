data "aws_region" "current" {}

resource "aws_vpc_ipam" "test" {
  operating_regions {
    region_name = data.aws_region.current.name
  }
}

resource "aws_vpc_ipam_pool" "test" {
  address_family = var.address_family
  ipam_scope_id  = aws_vpc_ipam.test.private_default_scope_id
 locale         = data.aws_region.current.name
}

resource "aws_vpc_ipam_pool_cidr" "test" {
  ipam_pool_id = aws_vpc_ipam_pool.test.id
  cidr         = var.cidr
}

resource "aws_vpc" "test" {
  ipv4_ipam_pool_id   = aws_vpc_ipam_pool.test.id
  ipv4_netmask_length = var.ipv4_netmask_length
  depends_on = [
    aws_vpc_ipam_pool_cidr.test
  ]

  tags = {
    Name = var.vpc_name
  }
}

#resource "aws_subnet"  "test" {
#  vpc_id = aws_vpc.test.id
#  cidr_block = var.subnet_cidr
#}
