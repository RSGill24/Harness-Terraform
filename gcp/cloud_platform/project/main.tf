resource "google_project" "project_in_a_folder" {
    name        = var.project_name
    project_id  = var.project_id
    org_id      = "0"
#    folder_id   = google_folder.department.name
}

#resource "google_folder" "department" {
#    display_name = var.folder_display_name
#    parent       = var.parent_dir
#}

resource "google_project_service" "compute" {
    project = google_project.project_in_a_folder.project_id
    service = "compute.googleapis.com"
}

terraform {  
  backend "gcs" {}
}
