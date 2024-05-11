# [START vpc_compute_basic_vm_custom_vpc_network]
resource "google_compute_network" "custom" {
  name                    = var.vpc_name
  auto_create_subnetworks = true
}
# [END vpc_compute_basic_vm_custom_vpc_network]

# [START vpc_compute_basic_vm_custom_vpc_subnet]
resource "google_compute_subnetwork" "custom" {
  name          = var.subnets_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.custom.id
}
# [END vpc_compute_basic_vm_custom_vpc_subnet]
