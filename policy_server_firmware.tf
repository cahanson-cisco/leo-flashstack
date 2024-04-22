resource "intersight_firmware_policy" "march2024" {
  name = "march2024"
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

  target_platform = "FIAttached"

  model_bundle_combo {
    model_family   = "UCSX-210C-M7"
    bundle_version = "5.2(0.230092)"
  }
}