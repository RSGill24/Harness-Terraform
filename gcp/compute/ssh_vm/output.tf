output "instance_id" {
    description = "Instance Id"
    value       = google_compute_instance.custom_subnet.instance_id
}

output "external_ip" {
  description = "The external IP address of the VM instance"
  value       = google_compute_instance.custom_subnet.network_interface.0.access_config.0.nat_ip
}
