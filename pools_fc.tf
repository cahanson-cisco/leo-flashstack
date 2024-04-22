resource "intersight_fcpool_pool" "hq_wwnn" {
  name = "hq_wwnn"
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

  pool_purpose = "WWNN"

  id_blocks {
    from = "20:00:00:11:13:01:11:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [id_blocks]
  }
}

resource "intersight_fcpool_pool" "hq_wwpn_fa" {
  name = "hq_wwpn_fa"
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

  pool_purpose = "WWPN"

  id_blocks {
    from = "20:00:00:11:fa:01:00:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [id_blocks]
  }
}

resource "intersight_fcpool_pool" "hq_wwpn_fb" {
  name = "hq_wwpn_fb"
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

  pool_purpose = "WWPN"

  id_blocks {
    from = "20:00:00:11:fb:01:00:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [id_blocks]
  }
}


resource "intersight_fcpool_pool" "dr_wwnn" {
  name = "dr_wwnn"
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

  pool_purpose = "WWNN"

  id_blocks {
    from = "20:00:00:11:13:02:11:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [id_blocks]
  }
}

resource "intersight_fcpool_pool" "dr_wwpn_fa" {
  name = "dr_wwpn_fa"
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

  pool_purpose = "WWPN"

  id_blocks {
    from = "20:00:00:11:fa:02:00:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [id_blocks]
  }
}

resource "intersight_fcpool_pool" "dr_wwpn_fb" {
  name = "dr_wwpn_fb"
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

  pool_purpose = "WWPN"

  id_blocks {
    from = "20:00:00:11:fb:02:00:01"
    size = 255
  }

  lifecycle {
    ignore_changes = [id_blocks]
  }
}
