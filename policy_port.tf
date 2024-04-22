resource "intersight_fabric_port_policy" "default-6454-A" {
  name = "default-6454-A"
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

  device_model = "UCS-FI-6454"
}

resource "intersight_fabric_port_policy" "default-6454-B" {
  name = "default-6454-B"
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

  device_model = "UCS-FI-6454"
}

resource "intersight_fabric_port_mode" "fibrechannel_ports-A" {
  custom_mode   = "FibreChannel"
  port_id_start = 1
  port_id_end   = 4
  slot_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-A.moid
  }
}


resource "intersight_fabric_fc_storage_role" "fc_storage-A" {
  admin_speed  = "32Gbps"
  vsan_id      = 11
  slot_id      = 1

  for_each = toset([for p in range(intersight_fabric_port_mode.fibrechannel_ports-A.port_id_start, intersight_fabric_port_mode.fibrechannel_ports-A.port_id_end + 1) : tostring(p)])

  port_id = each.value

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-A.moid
  }


  #port_policy {
  #  moid = intersight_fabric_port_policy.default-6454-A.moid
  #}
}

resource "intersight_fabric_port_mode" "fibrechannel_ports-B" {
  custom_mode   = "FibreChannel"
  port_id_start = 1
  port_id_end   = 4
  slot_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-B.moid
  }

}


resource "intersight_fabric_fc_storage_role" "fc_storage-B" {
  admin_speed  = "32Gbps"
  vsan_id      = 13
  slot_id      = 1

  for_each = toset([for p in range(intersight_fabric_port_mode.fibrechannel_ports-B.port_id_start, intersight_fabric_port_mode.fibrechannel_ports-B.port_id_end + 1) : tostring(p)])

  port_id = each.value

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-B.moid
  }
}

resource "intersight_fabric_server_role" "server_ports-A" {
  for_each = toset([for p in range(17, 20 + 1) : tostring(p)])

  port_id = each.value
  slot_id = 1

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-A.moid
  }

}

resource "intersight_fabric_server_role" "server_ports-B" {
  for_each = toset([for p in range(17, 20 + 1) : tostring(p)])

  port_id = each.value
  slot_id = 1

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-B.moid
  }

}

resource "intersight_fabric_uplink_pc_role" "ethernet_pc_uplink-A" {
  admin_speed = "Auto"
  pc_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-A.moid
  }

  dynamic "ports" {
    for_each = toset([for p in range(51, 52 + 1) : tostring(p)])
    content {
      port_id = ports.value
      slot_id = 1
    }
  }

}
resource "intersight_fabric_uplink_pc_role" "ethernet_pc_uplink-B" {
  admin_speed = "Auto"
  pc_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.default-6454-B.moid
  }

  dynamic "ports" {
    for_each = toset([for p in range(51, 52 + 1) : tostring(p)])
    content {
      port_id = ports.value
      slot_id = 1
    }
  }

}




resource "intersight_fabric_port_policy" "dr-6454-A" {
  name = "dr-6454-A"
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

  device_model = "UCS-FI-6454"
}

resource "intersight_fabric_port_policy" "dr-6454-B" {
  name = "dr-6454-B"
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

  device_model = "UCS-FI-6454"
}

resource "intersight_fabric_port_mode" "dr-fibrechannel_ports-A" {
  custom_mode   = "FibreChannel"
  port_id_start = 1
  port_id_end   = 4
  slot_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-A.moid
  }
}


resource "intersight_fabric_fc_storage_role" "dr-fc_storage-A" {
  admin_speed  = "32Gbps"
  vsan_id      = 22
  slot_id      = 1

  for_each = toset([for p in range(intersight_fabric_port_mode.dr-fibrechannel_ports-A.port_id_start, intersight_fabric_port_mode.dr-fibrechannel_ports-A.port_id_end + 1) : tostring(p)])

  port_id = each.value

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-A.moid
  }


  #port_policy {
  #  moid = intersight_fabric_port_policy.default-6454-A.moid
  #}
}

resource "intersight_fabric_port_mode" "dr-fibrechannel_ports-B" {
  custom_mode   = "FibreChannel"
  port_id_start = 1
  port_id_end   = 4
  slot_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-B.moid
  }

}


resource "intersight_fabric_fc_storage_role" "dr-fc_storage-B" {
  admin_speed  = "32Gbps"
  vsan_id      = 24
  slot_id      = 1

  for_each = toset([for p in range(intersight_fabric_port_mode.dr-fibrechannel_ports-B.port_id_start, intersight_fabric_port_mode.dr-fibrechannel_ports-B.port_id_end + 1) : tostring(p)])

  port_id = each.value

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-B.moid
  }
}

resource "intersight_fabric_server_role" "dr-server_ports-A" {
  for_each = toset([for p in range(17, 20 + 1) : tostring(p)])

  port_id = each.value
  slot_id = 1

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-A.moid
  }

}

resource "intersight_fabric_server_role" "dr-server_ports-B" {
  for_each = toset([for p in range(17, 20 + 1) : tostring(p)])

  port_id = each.value
  slot_id = 1

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-B.moid
  }

}

resource "intersight_fabric_uplink_pc_role" "dr-ethernet_pc_uplink-A" {
  admin_speed = "Auto"
  pc_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-A.moid
  }

  dynamic "ports" {
    for_each = toset([for p in range(51, 52 + 1) : tostring(p)])
    content {
      port_id = ports.value
      slot_id = 1
    }
  }

}
resource "intersight_fabric_uplink_pc_role" "dr-ethernet_pc_uplink-B" {
  admin_speed = "Auto"
  pc_id       = 1

  port_policy {
    moid = intersight_fabric_port_policy.dr-6454-B.moid
  }

  dynamic "ports" {
    for_each = toset([for p in range(51, 52 + 1) : tostring(p)])
    content {
      port_id = ports.value
      slot_id = 1
    }
  }

}