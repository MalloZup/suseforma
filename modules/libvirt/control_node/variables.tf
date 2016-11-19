variable "base_configuration" {
  description = "use ${module.base.configuration}, see main.tf.libvirt.example"
  type = "map"
}

variable "image" {
  description = "One of: opensuse421, sles11sp3, sles11sp4, sles12, sles12sp1"
  type = "string"
}

variable "name" {
  description = "hostname, without the domain part"
  type = "string"
}

variable "running" {
  description = "Whether this host should be turned on or off"
  default = true
}

variable "mac" {
  description = "a MAC address in the form AA:BB:CC:11:22:22"
  default = ""
}
