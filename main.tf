resource "hcloud_server" "main" {
  name        = "gateway"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
}

resource "hcloud_ssh_key" "default" {
  name       = "hetzner_key"
  public_key = file(var.pub_ssh_key_path)
}