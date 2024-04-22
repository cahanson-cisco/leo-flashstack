resource "intersight_ntp_policy" "default" {
  name = "default"
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

  enabled  = true
  ntp_servers = [
    "172.16.3.9",
    "172.16.173.1",
  ]
  timezone = "America/Toronto"
}