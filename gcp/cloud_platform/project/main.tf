resource "google_project" "project_in_a_folder" {
    name        = var.project_name
    project_id  = var.project_id
#    folder_id   = google_folder.department.name
}

#resource "google_folder" "department" {
#    display_name = var.folder_display_name
#    parent       = var.parent_dir
#}
