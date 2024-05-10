variable "gcp_terraform_sa_creds" {
    description = "GCP SA Credntial file json format"
    type        = map(string)
}

variable "project_id" {
    description = "GCP Project Id"
    type        = string
}

variable "region" {
    description = "Gcp VM Region"
    type        = string
}

variable "zone" {
    description = "Gcp VM Zone"
    type        = string
}

variable "machine_type" {
    description = "Gcp VM Machine Type"
    type        = string
}

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

variable "vm_name" {
    description = "Name of Virtual Machine"
    type        = string
}

variable "vm_disk_image" {
    description = "Boot disk image type for VM"
    type        = string
}
