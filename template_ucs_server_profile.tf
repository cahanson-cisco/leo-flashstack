resource "intersight_server_profile_template" "x210c_esxi_01_hq" {
  name = "x210c_esxi_01_hq"
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

  target_platform   = "FIAttached"

  policy_bucket { # BIOS
    moid        = intersight_bios_policy.virtualization.moid
    object_type = intersight_bios_policy.virtualization.object_type
  }

  policy_bucket { # Boot Order
    moid        = intersight_boot_precision_policy.UEFI_m2_RAID.moid
    object_type = intersight_boot_precision_policy.UEFI_m2_RAID.object_type
  }

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Virtual Media
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket { # Firmware
    moid        = intersight_firmware_policy.march2024.moid
    object_type = intersight_firmware_policy.march2024.object_type
  }

  policy_bucket { # IMC Access
    moid        = intersight_access_policy.inband_imc_hq.moid
    object_type = intersight_access_policy.inband_imc_hq.object_type
  }

  policy_bucket { # Local User
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket { # Virtual KVM
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket { # Storage
    moid        = intersight_storage_storage_policy.m2_RAID1.moid
    object_type = intersight_storage_storage_policy.m2_RAID1.object_type
  }

  policy_bucket { # LAN Connectivity
    moid        = intersight_vnic_lan_connectivity_policy.esxi-hq.moid
    object_type = intersight_vnic_lan_connectivity_policy.esxi-hq.object_type
  }

  policy_bucket { # SAN Connectivity
    moid        = intersight_vnic_san_connectivity_policy.san-hq.moid
    object_type = intersight_vnic_san_connectivity_policy.san-hq.object_type
  }
}

resource "intersight_server_profile_template" "x210c_esxi_01_dr" {
  name = "x210c_esxi_01_dr"
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

  target_platform   = "FIAttached"

  policy_bucket { # BIOS
    moid        = intersight_bios_policy.virtualization.moid
    object_type = intersight_bios_policy.virtualization.object_type
  }

  policy_bucket { # Boot Order
    moid        = intersight_boot_precision_policy.UEFI_m2_RAID.moid
    object_type = intersight_boot_precision_policy.UEFI_m2_RAID.object_type
  }

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Virtual Media
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket { # Firmware
    moid        = intersight_firmware_policy.march2024.moid
    object_type = intersight_firmware_policy.march2024.object_type
  }

  policy_bucket { # IMC Access
    moid        = intersight_access_policy.inband_imc_dr.moid
    object_type = intersight_access_policy.inband_imc_dr.object_type
  }

  policy_bucket { # Local User
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket { # Virtual KVM
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket { # Storage
    moid        = intersight_storage_storage_policy.m2_RAID1.moid
    object_type = intersight_storage_storage_policy.m2_RAID1.object_type
  }

  policy_bucket { # LAN Connectivity
    moid        = intersight_vnic_lan_connectivity_policy.esxi-dr.moid
    object_type = intersight_vnic_lan_connectivity_policy.esxi-dr.object_type
  }

  policy_bucket { # SAN Connectivity
    moid        = intersight_vnic_san_connectivity_policy.san-dr.moid
    object_type = intersight_vnic_san_connectivity_policy.san-dr.object_type
  }
}


resource "intersight_server_profile_template" "x210c_win_01_hq" {
  name = "x210c_win_01_hq"
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

  target_platform   = "FIAttached"
    policy_bucket { # BIOS
    moid        = intersight_bios_policy.virtualization.moid
    object_type = intersight_bios_policy.virtualization.object_type
  }

  policy_bucket { # Boot Order
    moid        = intersight_boot_precision_policy.UEFI_m2_RAID.moid
    object_type = intersight_boot_precision_policy.UEFI_m2_RAID.object_type
  }

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Virtual Media
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket { # Firmware
    moid        = intersight_firmware_policy.march2024.moid
    object_type = intersight_firmware_policy.march2024.object_type
  }

  policy_bucket { # IMC Access
    moid        = intersight_access_policy.inband_imc_hq.moid
    object_type = intersight_access_policy.inband_imc_hq.object_type
  }

  policy_bucket { # Local User
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket { # Virtual KVM
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket { # Storage
    moid        = intersight_storage_storage_policy.m2_RAID1.moid
    object_type = intersight_storage_storage_policy.m2_RAID1.object_type
  }

  policy_bucket { # LAN Connectivity
    moid        = intersight_vnic_lan_connectivity_policy.win-hq.moid
    object_type = intersight_vnic_lan_connectivity_policy.win-hq.object_type
  }

  policy_bucket { # SAN Connectivity
    moid        = intersight_vnic_san_connectivity_policy.san-hq.moid
    object_type = intersight_vnic_san_connectivity_policy.san-hq.object_type
  }
}

resource "intersight_server_profile_template" "x210c_win_01_dr" {
  name = "x210c_win_01_dr"
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

  target_platform   = "FIAttached"
    policy_bucket { # BIOS
    moid        = intersight_bios_policy.virtualization.moid
    object_type = intersight_bios_policy.virtualization.object_type
  }

  policy_bucket { # Boot Order
    moid        = intersight_boot_precision_policy.UEFI_m2_RAID.moid
    object_type = intersight_boot_precision_policy.UEFI_m2_RAID.object_type
  }

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Virtual Media
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket { # Firmware
    moid        = intersight_firmware_policy.march2024.moid
    object_type = intersight_firmware_policy.march2024.object_type
  }

  policy_bucket { # IMC Access
    moid        = intersight_access_policy.inband_imc_dr.moid
    object_type = intersight_access_policy.inband_imc_dr.object_type
  }

  policy_bucket { # Local User
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket { # Virtual KVM
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket { # Storage
    moid        = intersight_storage_storage_policy.m2_RAID1.moid
    object_type = intersight_storage_storage_policy.m2_RAID1.object_type
  }

  policy_bucket { # LAN Connectivity
    moid        = intersight_vnic_lan_connectivity_policy.win-dr.moid
    object_type = intersight_vnic_lan_connectivity_policy.win-dr.object_type
  }

  policy_bucket { # SAN Connectivity
    moid        = intersight_vnic_san_connectivity_policy.san-dr.moid
    object_type = intersight_vnic_san_connectivity_policy.san-dr.object_type
  }
}



resource "intersight_server_profile_template" "x210c_linux_01_hq" {
  name = "x210c_linux_01_hq"
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

  target_platform   = "FIAttached"
    policy_bucket { # BIOS
    moid        = intersight_bios_policy.virtualization.moid
    object_type = intersight_bios_policy.virtualization.object_type
  }

  policy_bucket { # Boot Order
    moid        = intersight_boot_precision_policy.UEFI_m2_RAID.moid
    object_type = intersight_boot_precision_policy.UEFI_m2_RAID.object_type
  }

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Virtual Media
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket { # Firmware
    moid        = intersight_firmware_policy.march2024.moid
    object_type = intersight_firmware_policy.march2024.object_type
  }

  policy_bucket { # IMC Access
    moid        = intersight_access_policy.inband_imc_hq.moid
    object_type = intersight_access_policy.inband_imc_hq.object_type
  }

  policy_bucket { # Local User
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket { # Virtual KVM
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket { # Storage
    moid        = intersight_storage_storage_policy.m2_RAID1.moid
    object_type = intersight_storage_storage_policy.m2_RAID1.object_type
  }

  policy_bucket { # LAN Connectivity
    moid        = intersight_vnic_lan_connectivity_policy.linux-hq.moid
    object_type = intersight_vnic_lan_connectivity_policy.linux-hq.object_type
  }

  policy_bucket { # SAN Connectivity
    moid        = intersight_vnic_san_connectivity_policy.san-hq.moid
    object_type = intersight_vnic_san_connectivity_policy.san-hq.object_type
  }
}

resource "intersight_server_profile_template" "x210c_linux_01_dr" {
  name = "x210c_linux_01_dr"
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

  target_platform   = "FIAttached"
    policy_bucket { # BIOS
    moid        = intersight_bios_policy.virtualization.moid
    object_type = intersight_bios_policy.virtualization.object_type
  }

  policy_bucket { # Boot Order
    moid        = intersight_boot_precision_policy.UEFI_m2_RAID.moid
    object_type = intersight_boot_precision_policy.UEFI_m2_RAID.object_type
  }

  policy_bucket { # Power
    moid        = intersight_power_policy.grid_last_state.moid
    object_type = intersight_power_policy.grid_last_state.object_type
  }

  policy_bucket { # Virtual Media
    moid        = intersight_vmedia_policy.vmedia_enabled.moid
    object_type = intersight_vmedia_policy.vmedia_enabled.object_type
  }

  policy_bucket { # Firmware
    moid        = intersight_firmware_policy.march2024.moid
    object_type = intersight_firmware_policy.march2024.object_type
  }

  policy_bucket { # IMC Access
    moid        = intersight_access_policy.inband_imc_dr.moid
    object_type = intersight_access_policy.inband_imc_dr.object_type
  }

  policy_bucket { # Local User
    moid        = intersight_iam_end_point_user_policy.default.moid
    object_type = intersight_iam_end_point_user_policy.default.object_type
  }

  policy_bucket { # Virtual KVM
    moid        = intersight_kvm_policy.default.moid
    object_type = intersight_kvm_policy.default.object_type
  }

  policy_bucket { # Storage
    moid        = intersight_storage_storage_policy.m2_RAID1.moid
    object_type = intersight_storage_storage_policy.m2_RAID1.object_type
  }

  policy_bucket { # LAN Connectivity
    moid        = intersight_vnic_lan_connectivity_policy.linux-dr.moid
    object_type = intersight_vnic_lan_connectivity_policy.linux-dr.object_type
  }

  policy_bucket { # SAN Connectivity
    moid        = intersight_vnic_san_connectivity_policy.san-dr.moid
    object_type = intersight_vnic_san_connectivity_policy.san-dr.object_type
  }
}