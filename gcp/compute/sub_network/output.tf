output "network_id" {
    description = "VPC network Id"
    value       = google_compute_instance.custom_subnet.instance_id
}

output "sub_network_id" {
    description = "Subnetwork Id"
    value       = google_compute_instance.custom_subnet.instance_id
}
