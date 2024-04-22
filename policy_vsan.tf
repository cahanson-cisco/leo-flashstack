resource "intersight_fabric_fc_network_policy" "hq-A" {
  name = "hq-A"
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

  enable_trunking = false
}

resource "intersight_fabric_vsan" "vsan11" {
  name = "vsan11"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 11
  vsan_id        = 11

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.hq-A.moid
  }

}

resource "intersight_fabric_fc_network_policy" "hq-B" {
  name = "hq-B"
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

  enable_trunking = false
}

resource "intersight_fabric_vsan" "vsan13" {
  name = "vsan13"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 13
  vsan_id        = 13

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.hq-B.moid
  }

}



resource "intersight_fabric_fc_network_policy" "dr-A" {
  name = "dr-A"
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

  enable_trunking = false
}

resource "intersight_fabric_vsan" "vsan22" {
  name = "vsan22"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 22
  vsan_id        = 22

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.dr-A.moid
  }

}

resource "intersight_fabric_fc_network_policy" "dr-B" {
  name = "dr-B"
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

  enable_trunking = false
}

resource "intersight_fabric_vsan" "vsan24" {
  name = "vsan24"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  default_zoning = "Enabled"
  vsan_scope     = "Storage"
  fcoe_vlan      = 24
  vsan_id        = 24

  fc_network_policy {
    moid = intersight_fabric_fc_network_policy.dr-B.moid
  }

}