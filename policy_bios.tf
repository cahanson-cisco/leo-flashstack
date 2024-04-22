resource "intersight_bios_policy" "virtualization" {
  name = "virtualization"
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

  processor_c6report           = "enabled"
  work_load_config             = "Balanced"
  cisco_adaptive_mem_training  = "enabled"
}