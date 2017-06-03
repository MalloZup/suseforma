resource "libvirt_volume" "opensuse422" {
  name = "${var.name_prefix}opensuse422"
  source = "http://download.opensuse.org/repositories/home:/SilvioMoioli:/Terraform:/Images/images/opensuse422.x86_64.qcow2"
  pool = "${var.pool}"
}

output "configuration" {
  // HACK: work around https://github.com/hashicorp/terraform/issues/9549
  value = "${
    map(
      "opensuse422", "${libvirt_volume.opensuse422.id}",
      "network_name", "${var.network_name}",

      "pool", "${var.pool}",
      "bridge", "${var.bridge}",
      "use_avahi", "${element(list("False", "True"), var.use_avahi)}",
      "domain", "${var.domain}",
      "name_prefix", "${var.name_prefix}"
    )
  }"
}
