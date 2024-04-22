resource "intersight_vnic_san_connectivity_policy" "san-hq" {
  name = "san-hq"
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

  placement_mode    = "custom"
  target_platform   = "FIAttached"
  wwnn_address_type = "POOL"

  wwnn_pool {
    moid = intersight_fcpool_pool.hq_wwnn.moid
  }

}

resource "intersight_vnic_fc_if" "vhba-a-hq" {
  name = "vhba-a-hq"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  type              = "fc-initiator"
  order             = 0
  wwpn_address_type = "POOL"

  wwpn_pool {
    moid = intersight_fcpool_pool.hq_wwpn_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  persistent_bindings = false

  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vsan11.moid
  }

  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.default.moid
  }

  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.default.moid
  }

  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.san-hq.moid
  }
  
  fc_zone_policies {
    moid = intersight_fabric_fc_zone_policy.hq-a.moid
  }
}

resource "intersight_vnic_fc_if" "vhba-b-hq" {
  name = "vhba-b-hq"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  type              = "fc-initiator"
  order             = 1
  wwpn_address_type = "POOL"

  wwpn_pool {
    moid = intersight_fcpool_pool.hq_wwpn_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  persistent_bindings = false

  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vsan13.moid
  }

  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.default.moid
  }

  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.default.moid
  }

  fc_zone_policies {
    moid = intersight_fabric_fc_zone_policy.hq-b.moid
  }

  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.san-hq.moid
  }

}

resource "intersight_vnic_san_connectivity_policy" "san-dr" {
  name = "san-dr"
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

  placement_mode    = "custom"
  target_platform   = "FIAttached"
  wwnn_address_type = "POOL"

  wwnn_pool {
    moid = intersight_fcpool_pool.dr_wwnn.moid
  }

}

resource "intersight_vnic_fc_if" "vhba-a-dr" {
  name = "vhba-a-dr"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  type              = "fc-initiator"
  order             = 0
  wwpn_address_type = "POOL"

  wwpn_pool {
    moid = intersight_fcpool_pool.dr_wwpn_fa.moid
  }

  placement {
    switch_id = "A"
    id = "MLOM"
  }

  persistent_bindings = false

  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vsan22.moid
  }

  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.default.moid
  }

  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.default.moid
  }

  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.san-dr.moid
  }
  
  fc_zone_policies {
    moid = intersight_fabric_fc_zone_policy.dr-a.moid
  }
}

resource "intersight_vnic_fc_if" "vhba-b-dr" {
  name = "vhba-b-dr"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  }
  type              = "fc-initiator"
  order             = 1
  wwpn_address_type = "POOL"

  wwpn_pool {
    moid = intersight_fcpool_pool.dr_wwpn_fb.moid
  }

  placement {
    switch_id = "B"
    id = "MLOM"
  }

  persistent_bindings = false

  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vsan24.moid
  }

  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.default.moid
  }

  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.default.moid
  }

  fc_zone_policies {
    moid = intersight_fabric_fc_zone_policy.dr-b.moid
  }

  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.san-dr.moid
  }

}
