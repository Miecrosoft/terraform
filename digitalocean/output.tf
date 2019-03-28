output "ip_public" {
  value = "${digitalocean_droplet.web.*.ipv4_address}" /* The result is in `list` mode */
}