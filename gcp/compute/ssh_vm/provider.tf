provider "google" {
    project     = var.project_id
    region      = var.region
    credentials = jsonencode(file(var.gcp_terraform_sa_creds))
}
