variable "count" {
  default = 2
}

resource "openstack_compute_instance_v2" "web" {
  count = "${var.count}"
  name = "${format("web-%02d", count.index+1)}"
  image_name = "CentOS6"
  flavor_id = 2
  key_pair = "naresh"
  security_groups = ["default"]
  network {
    name = "pri"
  }
  user_data = "${file("boot.sh")}"
}
