resource "intersight_networkconfig_policy" "default" {
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

  enable_dynamic_dns = false

  # ipv4
  enable_ipv4dns_from_dhcp = false
  preferred_ipv4dns_server = "172.16.173.11"
  alternate_ipv4dns_server = "172.16.173.12"

  # ipv6
  enable_ipv6              = false
  enable_ipv6dns_from_dhcp = false

}