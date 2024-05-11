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

variable "project_name" {
    description = "Name of GCP Project"
    type        = string
}

variable "folder_display_name" {
    description = "Name of folder inside which the project will be created"
    type        = string
}

variable "parent_dir" {
    description = "Path of the parent directory"
    type        = string
}
