resource "intersight_fabric_switch_cluster_profile" "hq-6454" {
  name = "hq-6454"
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

  type = "instance"
}

resource "intersight_fabric_switch_profile" "hq-6454-A" {
  name = "hq-6454-A"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  } 
  type = "instance"

  policy_bucket { # Port Policy
    moid        = intersight_fabric_port_policy.default-6454-A.moid
    object_type = intersight_fabric_port_policy.default-6454-A.object_type
  }

  policy_bucket { # Network Connectivity
    moid        = intersight_networkconfig_policy.default.moid
    object_type = intersight_networkconfig_policy.default.object_type
  }

  policy_bucket { # NTP Policy
    moid        = intersight_ntp_policy.default.moid
    object_type = intersight_ntp_policy.default.object_type
  }

  policy_bucket { # VSAN Configuration
    moid        = intersight_fabric_fc_network_policy.hq-A.moid
    object_type = intersight_fabric_fc_network_policy.hq-A.object_type
  }

  policy_bucket { # VLAN Configuration
    moid        = intersight_fabric_eth_network_policy.default.moid
    object_type = intersight_fabric_eth_network_policy.default.object_type
  }

  policy_bucket { # System QoS Policy
    moid        = intersight_fabric_system_qos_policy.default.moid
    object_type = intersight_fabric_system_qos_policy.default.object_type
  }
  policy_bucket { # Switch Control Policy
    moid        = intersight_fabric_switch_control_policy.direct-attached.moid
    object_type = intersight_fabric_switch_control_policy.direct-attached.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.hq-6454.moid
  }
}

resource "intersight_fabric_switch_profile" "hq-6454-B" {
  name = "hq-6454-B"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  } 
  type = "instance"

  policy_bucket { # Port Policy
    moid        = intersight_fabric_port_policy.default-6454-B.moid
    object_type = intersight_fabric_port_policy.default-6454-B.object_type
  }

  policy_bucket { # Network Connectivity
    moid        = intersight_networkconfig_policy.default.moid
    object_type = intersight_networkconfig_policy.default.object_type
  }

  policy_bucket { # NTP Policy
    moid        = intersight_ntp_policy.default.moid
    object_type = intersight_ntp_policy.default.object_type
  }
  policy_bucket { # VLAN Configuration
    moid        = intersight_fabric_eth_network_policy.default.moid
    object_type = intersight_fabric_eth_network_policy.default.object_type
  }

  policy_bucket { # System QoS Policy
    moid        = intersight_fabric_system_qos_policy.default.moid
    object_type = intersight_fabric_system_qos_policy.default.object_type
  }

  policy_bucket { # VSAN Configuration
    moid        = intersight_fabric_fc_network_policy.hq-B.moid
    object_type = intersight_fabric_fc_network_policy.hq-B.object_type
  }

  policy_bucket { # Switch Control Policy
    moid        = intersight_fabric_switch_control_policy.direct-attached.moid
    object_type = intersight_fabric_switch_control_policy.direct-attached.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.hq-6454.moid
  }
}


resource "intersight_fabric_switch_cluster_profile" "dr-6454" {
  name = "dr-6454"
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

  type = "instance"
}

resource "intersight_fabric_switch_profile" "dr-6454-A" {
  name = "dr-6454-A"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  } 
  type = "instance"

  policy_bucket { # Port Policy
    moid        = intersight_fabric_port_policy.dr-6454-A.moid
    object_type = intersight_fabric_port_policy.dr-6454-A.object_type
  }

  policy_bucket { # Network Connectivity
    moid        = intersight_networkconfig_policy.default.moid
    object_type = intersight_networkconfig_policy.default.object_type
  }

  policy_bucket { # NTP Policy
    moid        = intersight_ntp_policy.default.moid
    object_type = intersight_ntp_policy.default.object_type
  }

  policy_bucket { # VSAN Configuration
    moid        = intersight_fabric_fc_network_policy.dr-A.moid
    object_type = intersight_fabric_fc_network_policy.dr-A.object_type
  }

  policy_bucket { # VLAN Configuration
    moid        = intersight_fabric_eth_network_policy.default.moid
    object_type = intersight_fabric_eth_network_policy.default.object_type
  }

  policy_bucket { # System QoS Policy
    moid        = intersight_fabric_system_qos_policy.default.moid
    object_type = intersight_fabric_system_qos_policy.default.object_type
  }
  policy_bucket { # Switch Control Policy
    moid        = intersight_fabric_switch_control_policy.direct-attached.moid
    object_type = intersight_fabric_switch_control_policy.direct-attached.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.dr-6454.moid
  }
}

resource "intersight_fabric_switch_profile" "dr-6454-B" {
  name = "dr-6454-B"
  dynamic "tags" {
    for_each = local.tags
    content {
      key   = tags.key
      value = tags.value
    }
  } 
  type = "instance"

  policy_bucket { # Port Policy
    moid        = intersight_fabric_port_policy.dr-6454-B.moid
    object_type = intersight_fabric_port_policy.dr-6454-B.object_type
  }

  policy_bucket { # Network Connectivity
    moid        = intersight_networkconfig_policy.default.moid
    object_type = intersight_networkconfig_policy.default.object_type
  }

  policy_bucket { # NTP Policy
    moid        = intersight_ntp_policy.default.moid
    object_type = intersight_ntp_policy.default.object_type
  }
  policy_bucket { # VLAN Configuration
    moid        = intersight_fabric_eth_network_policy.default.moid
    object_type = intersight_fabric_eth_network_policy.default.object_type
  }

  policy_bucket { # System QoS Policy
    moid        = intersight_fabric_system_qos_policy.default.moid
    object_type = intersight_fabric_system_qos_policy.default.object_type
  }

  policy_bucket { # VSAN Configuration
    moid        = intersight_fabric_fc_network_policy.dr-B.moid
    object_type = intersight_fabric_fc_network_policy.dr-B.object_type
  }

  policy_bucket { # Switch Control Policy
    moid        = intersight_fabric_switch_control_policy.direct-attached.moid
    object_type = intersight_fabric_switch_control_policy.direct-attached.object_type
  }

  switch_cluster_profile {
    moid = intersight_fabric_switch_cluster_profile.dr-6454.moid
  }
}