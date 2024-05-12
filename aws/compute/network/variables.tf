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

variable "address_family" {
    description = "IPV4/6 address family"
    default     = "ipv4"
    type        = string
}

variable "cidr" {
    description = "Classless Inter-Domain Routing"
    type        = string
}

variable "ipv4_netmask_length" {
    description = "ipv4 netmask length"
    type        = number
}
