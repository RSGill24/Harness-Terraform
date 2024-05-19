resource "google_storage_bucket" "sample_bucket" {
  name          = var.name
  location      = var.location
  force_destroy = var.destroy

  public_access_prevention = var.public_access_prevention

  lifecycle_rule {
    condition {
      age = var.age
    }
    action {
      type = var.action_type
    }
  }

  uniform_bucket_level_access = var.uniform_bucket_level_access
}

terraform {  
  backend "gcs" {}
}
