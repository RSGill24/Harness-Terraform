variable "gcp_terraform_sa_creds" {
    description = "GCP SA Credntial file json format"
    type        = string
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
