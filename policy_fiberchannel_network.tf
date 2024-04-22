resource "intersight_vnic_fc_network_policy" "vsan11" {
  name = "vsan11"
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

  vsan_settings {
    id = 11
  }
}

resource "intersight_vnic_fc_network_policy" "vsan13" {
  name = "vsan13"
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

  vsan_settings {
    id = 13
  }
}

resource "intersight_vnic_fc_network_policy" "vsan22" {
  name = "vsan22"
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

  vsan_settings {
    id = 22
  }
}

resource "intersight_vnic_fc_network_policy" "vsan24" {
  name = "vsan24"
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

  vsan_settings {
    id = 24
  }
}