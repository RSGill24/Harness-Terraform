terraform {
  cloud {
    organization = "Rajindergill"

    workspaces {
      name = "harness-terraform-workspace"
    }
  }
}

provider "google" {
    credentials = jsonencode(var.gcp_terraform_sa_creds)
    project     = var.project_id
    region      = var.region
}
