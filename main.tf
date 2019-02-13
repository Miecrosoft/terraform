resource "digitalocean_droplet" "web" {
  image  = "${var.image_instance}"
  name   = "${var.name_instance}"
  region = "${var.region_instance}"
  size   = "${var.size_instance}"
}