resource "intersight_storage_storage_policy" "m2_RAID1" {
  name = "m2_RAID1"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  organization {
    moid = local.organization
  }

  use_jbod_for_vd_creation = false
  unused_disks_state       = "UnconfiguredGood"

  m2_virtual_drive {
    enable          = true
    controller_slot = "MSTOR-RAID-1"
  }

}