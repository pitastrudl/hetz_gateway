output "main_servers_status" {
  value = hcloud_server.main.status
}

output "main_servers_ips" {
  value = hcloud_server.main.ipv4_address
}

