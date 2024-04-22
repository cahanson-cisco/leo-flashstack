resource "intersight_macpool_pool" "hq_mac_fa" {
  name = "hq_mac_fa"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  tags {
    key = "Datacenter"
    value = "Primary"
  }
  organization {
    moid = local.organization
  }

  mac_blocks {
    from = "00:25:b5:01:fa:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "hq_mac_fb" {
  name = "hq_mac_fb"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  tags {
    key = "Datacenter"
    value = "Primary"
  }
  organization {
    moid = local.organization
  }
  
  mac_blocks {
    from = "00:25:b5:01:fb:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "dr_mac_fa" {
  name = "dr_mac_fa"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  tags {
    key = "Datacenter"
    value = "Secondary"
  }
  organization {
    moid = local.organization
  }

  mac_blocks {
    from = "00:25:b5:02:fa:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [mac_blocks]
  }
}

resource "intersight_macpool_pool" "dr_mac_fb" {
  name = "dr_mac_fb"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  tags {
    key = "Datacenter"
    value = "Secondary"
  }
  organization {
    moid = local.organization
  }
  
  mac_blocks {
    from = "00:25:b5:02:fb:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [mac_blocks]
  }
}
