variable "hcloud_token" {
default = "n00DH2fBVoBgpyrJh0TQmU3g6QpfTqm6Nrdm1dHGdBCOjrRvEqluWetHgwkJ0KhH"
}

variable "ssh_key" {
default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCnjnYKUZ6TYTUoL16kXQDuJP36CC2P8gGSwTHgN44RZMJojJDkbU1+N1exxz54giJEBIVYTvrM4DGhZ1m9JOAjOcaVLCkgLvS6TZnmq8kxUHs9Y7+ThDOiaQza6i3tsUJsaZ0xkc9gyj7BREz88oDMnD9JHGvypK8Iz//wFzic0c+vE1sLaLyNQPzu5Q5xNo/Cguf1naxBomEdon9R30qoggJl8pwVKHATCknXUjArLOISFetBlofa8tagm0KqAMgoGOGCLkXgRETWmUaUYihDA/IrDM+97BS1pklJdNMRb7bTCMwdeFM0tcGySqFiVklgM+4Fb7rT7/JCP5zdBoll root@300-1"
}

variable "private_key_path" {
  description = "Path to file containing private key"
  default     = "/root/.ssh/id_rsa"

}
#----------worker---------

variable "ssh_key1" {
default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNh7Qcvg510oJvz6C6Sr3yWl9ofJW+E+hrCh2h/2rj3TqJ+dd5UN4w6BpShQhNZYl3mqZQoDJLz/Nu9oUzEhDucuL4xmDNyWKuWdLmHcqBWSAhOtYNMrkIfGp/zworZ7aNmTmgQ/gwDLH+TL5YKuvxy1byiueQodm7/X914OKLBWQNbyUfkBRYd00hYmfq6Lha8G94kBisankjxk8bZt6Fs2Az72OP3RNFdnVT/UkL9cQBJTmwsxYmdE+Y6tSB1rSCK/sqSyEwb/owk6aJydHowoWlSzYXnrYDxXxzYMuF72mwnG2oZpjGJ/1Fdi7/kFSakqZGUDoTqOIJgbMsmnBt root@300-1"
}

variable "private_key_path1" {
  description = "Path to file containing private key"
  default     = "/root/.ssh/worker"

}
