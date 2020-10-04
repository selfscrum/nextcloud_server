variable "access_token" {}
variable "env_name"  { }
variable "env_stage" { }
variable "location" { }
variable "system_function" {}
variable "instance_amount" {}
variable "instance_image" {}
variable "instance_type" {}
variable "keyname" {} 

provider "hcloud" {
  token = var.access_token
}

resource "hcloud_server" "server" {
  name        = format("%s-%s-%s", var.env_stage, var.env_name, var.system_function)
  image       = var.instance_image
  server_type = var.instance_type
  location    = var.location
  labels      = {
      "Name"     = var.env_name
      "Stage"    = var.env_stage
      "Function" = var.system_function
  }
  ssh_keys    = [ var.keyname ]
}

output "server-ip" {
    value = hcloud_server.server.ipv4_address
}

