terraform {
  cloud {
    organization = "Rajindergill"

    workspaces {
      name = "harness-terraform-workspace"
    }
  }
}

provider "google" {
    project     = var.project_id
    region      = var.region
    credentials = jsonencode(var.gcp_terraform_sa_creds)
}
