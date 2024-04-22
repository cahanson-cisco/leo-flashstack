resource "intersight_chassis_profile" "CH1-hq" {
  name = "CH1-hq"
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
  type            = "instance"

  policy_bucket {
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket {
    moid        = intersight_thermal_policy.thermal["LowPower"].moid
    object_type = intersight_thermal_policy.thermal["LowPower"].object_type
  }
}

resource "intersight_chassis_profile" "CH1-dr" {
  name = "CH1-dr"
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
  type            = "instance"

  policy_bucket {
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket {
    moid        = intersight_thermal_policy.thermal["LowPower"].moid
    object_type = intersight_thermal_policy.thermal["LowPower"].object_type
  }
}