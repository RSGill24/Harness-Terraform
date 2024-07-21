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
    credentials = jsondecode(env("GOOGLE_CREDENTIALS"))
}
