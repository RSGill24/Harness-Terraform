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

resource "google_compute_firewall" "deny_rdp" {
  name         = var.firewall_name
  network      = google_compute_network.custom.self_link
  source_tags = ["web"]
  target_tags  = ["bastion"]
  deny {
      protocol = var.protocol
      ports    = var.ports
  }
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
    block-project-ssh-keys = var.block_project_ssh_keys
  }
#  network_interface {
#    network = "default"
#
#    access_config {
#      nat_ip = var.nat_ip
#      network_tier = var.network_tier
#    }
#  }
}
