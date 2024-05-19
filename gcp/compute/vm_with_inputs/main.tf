resource "google_compute_instance" "custom_subnet" {
  name         = var.vm_name
  zone         = var.zone
  machine_type = var.machine_type
  network_interface {
    network    = var.network_id
    subnetwork = var.sub_network_id
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

terraform {  
  backend "gcs" {}
}
