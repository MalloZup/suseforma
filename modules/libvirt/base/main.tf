resource "libvirt_volume" "opensuse421" {
  name = "${var.name_prefix}opensuse421"
  source = "http://download.opensuse.org/repositories/home:/SilvioMoioli:/Terraform:/Images/images/opensuse421.x86_64.qcow2"
  pool = "${var.pool}"
}

output "configuration" {
  // HACK: work around https://github.com/hashicorp/terraform/issues/9549
  value = "${
    map(
      "opensuse421", "${libvirt_volume.opensuse421.id}",
      "network_name", "${var.network_name}",

      "pool", "${var.pool}",
      "bridge", "${var.bridge}",
      "use_avahi", "${element(list("False", "True"), var.use_avahi)}",
      "domain", "${var.domain}",
      "name_prefix", "${var.name_prefix}"
    )
  }"
}
