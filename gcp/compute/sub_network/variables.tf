variable "vpc_name" {
    description = "Name of VPC network"
    type        = string
}

variable "subnets_name" {
    description = "Name of Subnets"
    type        = string
}

variable "ip_cidr_range" {
    description = "IP CIDR Range for subnets"
    type        = string
}

variable "zone" {
    description = "Gcp VM Zone"
    type        = string
}
