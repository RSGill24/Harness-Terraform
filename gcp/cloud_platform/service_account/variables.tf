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

variable "service_account_id" {
    description = "Service account id"
    type        = string
}

variable "display_name" {
    description = "Service Account display name"
    type        = string
}
