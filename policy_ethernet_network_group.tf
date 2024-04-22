resource "intersight_fabric_eth_network_group_policy" "esxi_mgmt" {
  name = "esxi_mgmt"
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

  vlan_settings {
    native_vlan   = var.network_map_infra["inband_vmware"].vlan
    allowed_vlans = var.network_map_infra["inband_vmware"].vlan
  }

}

resource "intersight_fabric_eth_network_group_policy" "esxi_vmnetworks" {
  name = "esxi_vmnetworks"
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

  vlan_settings {
    native_vlan = 1
    allowed_vlans = join(",", [for e in var.network_map_vmnetwork : e.vlan])
  }

}


resource "intersight_fabric_eth_network_group_policy" "apps_mgmt" {
  name = "apps_mgmt"
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

  vlan_settings {
    native_vlan   = var.network_map_vmnetwork["apps-mgmt-173"].vlan
    allowed_vlans = var.network_map_vmnetwork["apps-mgmt-173"].vlan
  }

}



resource "intersight_fabric_eth_network_group_policy" "win_mgmt" {
  name = "win_mgmt"
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

  vlan_settings {
    native_vlan   = var.network_map_win["win-mgmt-867"].vlan
    allowed_vlans = var.network_map_win["win-mgmt-867"].vlan
  }

}


resource "intersight_fabric_eth_network_group_policy" "linux_mgmt" {
  name = "linux_mgmt"
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

  vlan_settings {
    native_vlan   = var.network_map_win["win-mgmt-867"].vlan
    allowed_vlans = var.network_map_win["win-mgmt-867"].vlan
  }

}