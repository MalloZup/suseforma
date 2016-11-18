module "control_node" {
  source = "../host"
  base_configuration = "${var.base_configuration}"
  name = "${var.name}"
  image = "sles12sp1"
  running = "${var.running}"
  mac = "${var.mac}"
  grains = "role: control-node"
}
