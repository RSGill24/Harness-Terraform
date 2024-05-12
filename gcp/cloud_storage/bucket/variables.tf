variable "gcp_terraform_sa_creds" {
    description = "GCP SA Credntial file json format"
    type        = map(string)
}

variable "project_id" {
    description = "GCP Project Id"
    type        = string
}

variable "region" {
    description = "Gcp provider Region"
    type        = string
}

variable "name" {
    description = "Name of cloud storage"
    type        = string
}

variable "location" {
    description = "location of cloud storage"
    type        = string
}

variable "destroy" {
    description = "Should force destroy cloud storage"
    type        = bool
}

variable "public_access_prevention" {
    description = "Should prevent public access for cloud storage"
    type        = string
}

variable "uniform_bucket_level_access" {
    description = "Should provide uniform bucket level access"
    type        = bool
}

variable "age" {
    description = "lifecycle age of cloud storage"
    type        = number
}

variable "action_type" {
    description = "lifecycle end action type"
    type        = string
}
