variable "network_map_infra" {
  type = map(object({
    vlan = number
    qos  = string
  }))
  default = {
    inband_ucs = {
      vlan = 170
      qos  = "be"
    }
    inband_vmware = {
      vlan = 172
      qos  = "be"
    }
  }
}

variable "network_map_vmnetwork" {
  type = map(object({
    vlan = number
    qos  = string
  }))
  default = {
    apps-mgmt-173 = {
      vlan = 173
      qos  = "be"
    }
    wap-168 = {
      vlan = 168
      qos  = "be"
    }
    vmotion = {
      vlan = 174
      qos  = "be"
    }
  }
}


variable "network_map_win" {
  type = map(object({
    vlan = number
    qos  = string
  }))
  default = {
    win-mgmt-867 = {
      vlan = 867
      qos  = "be"
    }
  }
}

variable "network_map_win_apps" {
  type = map(object({
    vlan = number
    qos  = string
  }))
  default = {
    vlan-868 = {
      vlan = 868
      qos  = "be"
    }
  }
}