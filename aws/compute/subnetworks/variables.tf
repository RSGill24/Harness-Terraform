variable "vpc_name" {
    description = "Name of VPC network"
    type        = string
}

variable "region" {
    description = "AWS provider Region"
    type        = string
}

variable "access_key" {
    description = "AWS account access key"
    type        = string
}

variable "secret_key" {
    description = "AWS account secret key"
    type        = string
}

variable "vpc_cidr" {
    description = "Classless Inter-Domain Routing"
    type        = string
}

variable "subnet_cidr" {
    description = "Classless Inter-Domain Routing for subnet"
    type        = string
}

variable "subnet_name" {
    description = "Name of VPC network"
    type        = string
}

variable "instance_tendency" {
  description = "Instance tendency"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "map public ip on launch"
  type        = bool
}

variable "availability_zone" {
  description = "availability_zone"
  type        = string
}
