resource "oci_core_virtual_network" "vcn" {
  compartment_id = var.compartment_id
  display_name   = "terraform_vcn"
  cidr_block     = "10.0.0.0/16"
}

resource "oci_core_subnet" "subnet" {
  compartment_id      = var.compartment_id
  vcn_id              = oci_core_virtual_network.vcn.id
  availability_domain = var.availability_domain
  display_name        = "terraform_subnet"
  cidr_block          = "10.0.1.0/24"
}
