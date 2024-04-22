resource "intersight_access_policy" "inband_imc_hq" {
  name = "inband_imc_hq"
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

  configuration_type {
    configure_inband      = true
    configure_out_of_band = false
  }

  inband_vlan = var.network_map_infra["inband_ucs"].vlan

  inband_ip_pool {
    moid = intersight_ippool_pool.ip_pools["kvm_pool_hq"].id
  }

}

resource "intersight_access_policy" "inband_imc_dr" {
  name = "inband_imc_dr"
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

  configuration_type {
    configure_inband      = true
    configure_out_of_band = false
  }

  inband_vlan = var.network_map_infra["inband_ucs"].vlan

  inband_ip_pool {
    moid = intersight_ippool_pool.ip_pools["kvm_pool_dr"].id
  }

}