provider "hcloud" {
  token = "${var.hcloud_token}"
}
resource "hcloud_ssh_key" "stoyan" {
  name       = "stoyan"
  public_key = "${var.ssh_key}"
}
resource "hcloud_server" "master" {
  name = "master"
  image = "ubuntu-18.04"
  server_type = "cx21"
  location = "nbg1"
  ssh_keys    = ["${hcloud_ssh_key.stoyan.name}"]
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      private_key = "${file("${var.private_key_path}")}"
      agent       = false
      host        = "${hcloud_server.master.ipv4_address}"
    }
}
}
# ............................................................................................ end of vm master
resource "hcloud_ssh_key" "worker" {
  name       = "worker"
  public_key = "${var.ssh_key1}"
}
resource "hcloud_server" "worker" {
  name = "worker"
  image = "ubuntu-18.04"
  server_type = "cx11"
  location = "nbg1"
  ssh_keys    = ["${hcloud_ssh_key.worker.name}"]
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      private_key = "${file("${var.private_key_path1}")}"
      agent       = false
      host        = "${hcloud_server.worker.ipv4_address}"
    }
    }
}

resource "local_file" "foo" {
    content     = "[host] \n  master ansible_host=${hcloud_server.master.ipv4_address} \n  worker ansible_host=${hcloud_server.worker.ipv4_address} ansible_ssh_private_key_file=/root/.ssh/worker \n  "
    filename = "/root/webdb/hosts"
}
