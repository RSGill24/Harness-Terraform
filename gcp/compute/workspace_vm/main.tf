resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = true
}
# [END vpc_compute_basic_vm_custom_vpc_network]


resource "google_compute_firewall" "default" {
  name    = "allow-ssh"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create a VM in a custom VPC network and subnet

resource "google_compute_instance" "ssh_vm" {
  name         = var.vm_name
  zone         = var.zone
  machine_type = var.machine_type
  network_interface {
    network    = google_compute_network.vpc_network.id

    access_config {
      # Include this to give the VM an external IP address
    }
  }

  metadata = {
    sshKeys = "${var.ssh_user}:${var.ssh_key}"
  }

  tags = ["ssh"]

  boot_disk {
    initialize_params {
      image = var.vm_disk_image
    }
  }

  service_account {
    email  = var.service_account
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/userinfo.email",
    ]
  }
}
