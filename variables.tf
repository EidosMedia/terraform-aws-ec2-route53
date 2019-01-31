variable "internal_ips" {
  type = "map"
  default = {
    hostname = []
    private_ip = []
  }
}

variable zone_id {
    default = ""
}

variable ttl {
    default = ""
}

variable domain {
    default = ""
}

variable count {}

variable type {
    default = "CNAME"
}