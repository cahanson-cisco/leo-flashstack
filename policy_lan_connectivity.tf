resource "intersight_vnic_lan_connectivity_policy" "esxi-hq" {
  name = "esxi-hq"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "hq-mgmt-a" {
  name = "hq-mgmt-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-mgmt-b" {
  name = "hq-mgmt-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}


resource "intersight_vnic_eth_if" "hq-ETH0-a" {
  name = "hq-ETH0-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-ETH0-b" {
  name = "hq-ETH0-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-ETH1-a" {
  name = "hq-ETH1-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 6
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-ETH1-b" {
  name = "hq-ETH1-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 7
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-ETH2-a" {
  name = "hq-ETH2-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 8
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-ETH2-b" {
  name = "hq-ETH2-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 9
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
  }

}


resource "intersight_vnic_lan_connectivity_policy" "esxi-dr" {
  name = "esxi-dr"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "dr-mgmt-a" {
  name = "dr-mgmt-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-mgmt-b" {
  name = "dr-mgmt-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}


resource "intersight_vnic_eth_if" "dr-ETH0-a" {
  name = "dr-ETH0-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-ETH0-b" {
  name = "dr-ETH0-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-ETH1-a" {
  name = "dr-ETH1-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 6
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-ETH1-b" {
  name = "dr-ETH1-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 7
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-ETH2-a" {
  name = "dr-ETH2-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 8
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-ETH2-b" {
  name = "dr-ETH2-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 9
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.dr_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
  }

}



resource "intersight_vnic_lan_connectivity_policy" "win-hq" {
  name = "win-hq"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "hq-win-mgmt-a" {
  name = "hq-win-mgmt-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.win_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-win-mgmt-b" {
  name = "hq-win-mgmt-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.win_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-hq.moid
  }

}


resource "intersight_vnic_eth_if" "hq-win-ETH0-a" {
  name = "hq-win-ETH0-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-win-ETH0-b" {
  name = "hq-win-ETH0-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-win-ETH1-a" {
  name = "hq-win-ETH1-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 6
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-win-ETH1-b" {
  name = "hq-win-ETH1-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 7
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-hq.moid
  }

}



resource "intersight_vnic_lan_connectivity_policy" "win-dr" {
  name = "win-dr"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "dr-win-mgmt-a" {
  name = "dr-win-mgmt-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.win_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-win-mgmt-b" {
  name = "dr-win-mgmt-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.win_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-dr.moid
  }

}


resource "intersight_vnic_eth_if" "dr-win-ETH0-a" {
  name = "dr-win-ETH0-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-win-ETH0-b" {
  name = "dr-win-ETH0-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-win-ETH1-a" {
  name = "dr-win-ETH1-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 6
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-win-ETH1-b" {
  name = "dr-win-ETH1-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 7
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.win-dr.moid
  }

}

resource "intersight_vnic_lan_connectivity_policy" "linux-hq" {
  name = "linux-hq"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "hq-linux-mgmt-a" {
  name = "hq-linux-mgmt-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.linux_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-linux-mgmt-b" {
  name = "hq-linux-mgmt-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.linux_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-hq.moid
  }

}


resource "intersight_vnic_eth_if" "hq-linux-ETH0-a" {
  name = "hq-linux-ETH0-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-linux-ETH0-b" {
  name = "hq-linux-ETH0-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-linux-ETH1-a" {
  name = "hq-linux-ETH1-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 6
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-hq.moid
  }

}

resource "intersight_vnic_eth_if" "hq-linux-ETH1-b" {
  name = "hq-linux-ETH1-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 7
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-hq.moid
  }

}



resource "intersight_vnic_lan_connectivity_policy" "linux-dr" {
  name = "linux-dr"
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

  placement_mode  = "custom"
  target_platform = "FIAttached"
}

resource "intersight_vnic_eth_if" "dr-linux-mgmt-a" {
  name = "dr-linux-mgmt-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 2
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.linux_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-linux-mgmt-b" {
  name = "dr-linux-mgmt-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 3
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.linux_mgmt.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["silver"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-dr.moid
  }

}


resource "intersight_vnic_eth_if" "dr-linux-ETH0-a" {
  name = "dr-linux-ETH0-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 4
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-linux-ETH0-b" {
  name = "dr-linux-ETH0-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 5
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-linux-ETH1-a" {
  name = "dr-linux-ETH1-a"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 6
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-dr.moid
  }

}

resource "intersight_vnic_eth_if" "dr-linux-ETH1-b" {
  name = "dr-linux-ETH1-b"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }

  order            = 7
  mac_address_type = "POOL"

  mac_pool {
    moid = intersight_macpool_pool.hq_mac_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  cdn {
    nr_source = "vnic"
  }

  fabric_eth_network_group_policy {
    moid = intersight_fabric_eth_network_group_policy.esxi_vmnetworks.moid
  }

  fabric_eth_network_control_policy {
    moid = intersight_fabric_eth_network_control_policy.default.moid
  }

  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.default["gold"].moid
  }

  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.esxi.moid
  }

  lifecycle {
    ignore_changes = [cdn]
  }

  lan_connectivity_policy {
    moid = intersight_vnic_lan_connectivity_policy.linux-dr.moid
  }

}