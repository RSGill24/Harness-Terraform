/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# [START compute_basic_vm_parent_tag]
# [START compute_instances_create]

# Create a VM instance from a public image
# in the `default` VPC network and subnet

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

resource "google_compute_firewall" "allow_rdp" {
  name         = var.firewall_name
  network      = google_compute_network.custom.self_link
  target_tags  = ["bastion"]
  allow {
      protocol = var.protocol
      ports    = jsonencode(var.ports)
  }
}
# [END vpc_compute_basic_vm_custom_vpc_subnet]

# [START compute_instances_create_with_subnet]

# Create a VM in a custom VPC network and subnet

resource "google_compute_instance" "custom_subnet" {
  name         = var.vm_name
  tags         = ["allow-ssh"]
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

  access_config {
      nat_ip = var.nat_ip
      network_tier = var.network_tier
  }
}
# [END compute_instances_create_with_subnet]
# [END compute_basic_vm_parent_tag]
