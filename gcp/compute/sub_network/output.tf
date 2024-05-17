output "network_id" {
    description = "VPC network Id"
    value       = google_compute_network.custom.id
}

output "sub_network_id" {
    description = "Subnetwork Id"
    value       = google_compute_subnetwork.custom_subnet.id
}
