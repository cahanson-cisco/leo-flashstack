resource "intersight_fabric_fc_zone_policy" "hq-a" {
  name = "hq-a"
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
  
    fc_target_zoning_type = "SIMT"
    fc_target_members = [ {
      name = "purect0fc4"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "A"
      vsan_id = 11
      wwpn = "52:4A:93:7c:85:7e:7f:04"
    },
    {
      name = "purect1fc4"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "A"
      vsan_id = 11
      wwpn = "52:4A:93:7c:85:7e:7f:18"
    } ]
}

resource "intersight_fabric_fc_zone_policy" "hq-b" {
  name = "hq-b"
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
  
    fc_target_zoning_type = "SIMT"
    fc_target_members = [ {
      name = "purect0fc8"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "B"
      vsan_id = 13
      wwpn = "52:4A:93:7c:85:7e:7f:08"
    },{
      name = "purect1fc8"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "B"
      vsan_id = 13
      wwpn = "52:4A:93:7C:85:7E:7F:14"
    } ]
}

resource "intersight_fabric_fc_zone_policy" "dr-a" {
  name = "dr-a"
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
  
    fc_target_zoning_type = "SIMT"
    fc_target_members = [ {
      name = "purect0fc4"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "A"
      vsan_id = 22
      wwpn = "52:4A:93:71:32:a7:3b:04"
    },
    {
      name = "purect1fc4"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "A"
      vsan_id = 22
      wwpn = "52:4A:93:71:32:a7:3b:18"
    } ]
}

resource "intersight_fabric_fc_zone_policy" "dr-b" {
  name = "dr-b"
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
  
    fc_target_zoning_type = "SIMT"
    fc_target_members = [ {
      name = "purect0fc8"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "B"
      vsan_id = 24
      wwpn = "52:4A:93:71:32:a7:3b:08"
    },{
      name = "purect1fc8"
      additional_properties = ""
      class_id = ""
      object_type = ""
      switch_id = "B"
      vsan_id = 24
      wwpn = "52:4A:93:71:32:a7:3b:14"
    } ]
}