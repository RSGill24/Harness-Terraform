variable "gcp_terraform_sa_creds" {
    description = "GCP SA Credntial file json format"
    type        = map(string)
}

variable "project_id" {
    description = "GCP Project Id"
    type        = string
}

variable "region" {
    description = "Gcp provider/VM Region"
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

variable "vm_name" {
    description = "Name of Virtual Machine"
    type        = string
}

variable "vm_disk_image" {
    description = "Boot disk image type for VM"
    type        = string
}

variable "block_project_ssh_keys" {
    description = "block project ssh keys"
    type        = bool
}

variable "network_id" {
    description = "Network Id"
    type        = string
}

variable "sub_network_id" {
    description = "Sub Network Id"
    type        = string
}
