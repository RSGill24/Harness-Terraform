variables "client_id" {
  description = "Client Id"
  type        = string
}

variables "client_secret" {
  description = "Client Secret"
  type        = string
}

variables "env" {
  description = "Azure Environment"
  type        = string
}

variables "subscription_id" {
  description = "Subscription Id"
  type        = string
}

variables "tenant_id" {
  description = "Tenant Id"
  type        = string
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

variable "network_name" {
  description = "Network Name"
  type        = string
}

variable "address_space" {
  description = "Address space"
  type        = list(string)
}

variable "dns_servers" {
  description = "DNS servers"
  type        = list(string)
}

variable "subnet_name" {
  description = "Sub Network Name"
  type        = string
}

variable "address_prefix" {
  description = "Address prefix"
  type        = string
}

variable "environment_tag" {
  description = "Environment tag"
  type        = string
}
