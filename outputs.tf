output "publicip" {
 value = "${hcloud_server.master.ipv4_address}"
}
output "publicipdb" {
  value = "${hcloud_server.worker.ipv4_address}"
}
