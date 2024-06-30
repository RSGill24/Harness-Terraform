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

# [START compute_instances_create_with_subnet]

# Create a VM in a custom VPC network and subnet

resource "google_compute_instance" "custom_subnet" {
  name         = var.vm_name
  zone         = var.zone
  machine_type = var.machine_type
  network_interface {
    network    = google_compute_network.custom.id
    subnetwork = google_compute_subnetwork.custom.id
  }
  boot_disk {
    initialize_params {
      image = var.vm_disk_image
    }
  }
  metadata = {
    sshKeys = "${var.ssh_user}:${var.ssh_key}"
  }
}
