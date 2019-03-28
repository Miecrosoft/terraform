resource "digitalocean_droplet" "web" {
  count = 1 /* how many droplets generated */
  image  = "${var.image_instance}"
  name   = "${var.name_instance}-${count.index + 1}" /* looping index started from 1 to 'count' */
  region = "${var.region_instance}"
  size   = "${var.size_instance}"
  ssh_keys = "${var.ssh_keys_instance}"

  connection {
    type = "ssh"
    user = "root"
    host = "${digitalocean_droplet.web.ipv4_address}"
    port = 22
    timeout = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "apt update -y",
      "apt install htop",
      "cd /etc/",
      "touch Z.lol"
    ]
  }
}