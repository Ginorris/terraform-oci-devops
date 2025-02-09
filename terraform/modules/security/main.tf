resource "oci_core_security_list" "allow_ssh" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "Allow SSH"

  ingress_security_rules {
    protocol = "6"  # TCP
    source   = var.allowed_ssh_ip

    tcp_options {
      min = 22
      max = 22
    }
  }

  egress_security_rules {
    protocol    = "6"  # TCP
    destination = "0.0.0.0/0"

    tcp_options {
      min = 80
      max = 80
    }
  }

  egress_security_rules {
    protocol    = "6"  # TCP
    destination = "0.0.0.0/0"

    tcp_options {
      min = 443
      max = 443
    }
  }
}
