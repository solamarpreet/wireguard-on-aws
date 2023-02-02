output "public-ip-myvpnserver" {
  value = aws_instance.myvpnserver.public_ip
  description = "Public IP for myvpnserver"
}
