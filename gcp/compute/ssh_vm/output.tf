output "instance_id" {
    description = "Instance Id"
    value       = google_compute_instance.ssh_vm.instance_id
}

output "external_ip" {
  description = "The external IP address of the VM instance"
  value       = google_compute_instance.ssh_vm.network_interface.0.access_config.0.nat_ip
}
