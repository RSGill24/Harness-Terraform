resource "google_compute_network" "custom" {
  name                    = var.vpc_name
  auto_create_subnetworks = true
}
