resource "digitalocean_droplet" "web" {
  count = 1 /* how many droplets generated */
  image  = "${var.image_instance}"
  name   = "${var.name_instance}-${count.index + 1}" /* looping index started from 1 to 'count' */
  region = "${var.region_instance}"
  size   = "${var.size_instance}"
  ssh_keys = "${var.ssh_keys_instance}"
}