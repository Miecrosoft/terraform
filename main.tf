resource "digitalocean_droplet" "web" {
  count = 5 /* how many droplets generated */
  image  = "${var.image_instance}"
  name   = "${var.name_instance}-${count.index}" /* looping index started from 0 to 'count' */
  region = "${var.region_instance}"
  size   = "${var.size_instance}"
}