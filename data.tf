resource "openstack_blockstorage_volume_v1" "volume_2" {
  region      = "RegionOne"
  name        = "tf-test-volume"
  description = "first test volume"
  size        = 1
}
