resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/templates/inventory.tftpl",
    { server_ip = aws_instance.myvpnserver.public_ip,
      server_name = aws_instance.myvpnserver.id,
      ansible_ssh_private_key_file = var.ansible_ssh_private_key_file
      vpn_duckdns_url = var.vpn_duckdns_url
    }
  )

  filename        = "${path.module}/../ansible/hosts"
  file_permission = "0644"
}
