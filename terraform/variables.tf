variable "ssh_public_key" {
  description = "Public SSH key added to authorized_keys file of new instance"
  type        = string
}

variable "ansible_ssh_private_key_file" {
  description = "Private SSH key used to connect to instance via ansible"
  type        = string
}

variable "profile" {
  description = "AWS profile you wish to use from the config file"
  default     = "default"
  type        = string
}

variable "vpn_duckdns_url" {
  description = "DuckDNS url to configure DDNS hostname for k8s control plane"
  default     = "http://example.com"
  type        = string
  sensitive   = true
}