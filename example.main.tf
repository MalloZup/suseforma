provider "libvirt" {
  uri = "qemu:///system"
}

module "base" {
  source = "./modules/libvirt/base"
  #  UC16 - 5f7a0ab563
  cc_username = "UC7"
  // optional parameters with defaults below
  // pool = "default"
  network_name = "terraform-network" // change to "" if you change bridge below
  bridge = "br7"
  name_prefix = "sf"
}

# this is the only one fixed machine, but can also be removed, if needed.

module "control-node" {
  source = "./modules/libvirt/control_node"
  base_configuration = "${module.base.configuration}"
  name = "control-node"
}

module "test-client" {
  source = "./modules/libvirt/host"
  base_configuration = "${module.base.configuration}"
  name = "test-client"
  image = "sles12sp1"
  grains = "role: frankzappa"
}

module "tomcat-server" {
  source = "./modules/libvirt/host"
  base_configuration = "${module.base.configuration}"
  name = "tomcat-server"
  image = "sles12sp1"
  grains = "role: tomcat-server"
}
