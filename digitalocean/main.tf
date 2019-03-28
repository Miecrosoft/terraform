resource "digitalocean_droplet" "web" {
  count = 3 /* how many droplets generated */
  image  = "${var.image_instance}"
  name   = "${var.name_instance}-${count.index}" /* looping index started from 1 to 'count' */
  region = "${var.region_instance}"
  size   = "${var.size_instance}"
  ssh_keys = "${var.ssh_keys_instance}"

  connection {
    type = "ssh"
    user = "root"
    host = "${self.ipv4_address}"
    port = 22
    timeout = "2m"
  }

  provisioner "remote-exec" {
    script = "files/exec.sh"
  }
}