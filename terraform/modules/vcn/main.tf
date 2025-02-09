
resource "oci_core_virtual_network" "vcn" {
  compartment_id = var.compartment_id
  display_name   = "terraform_vcn"
  cidr_block     = var.vcn_cidr_block
}

resource "oci_core_subnet" "subnet" {
  compartment_id      = var.compartment_id
  vcn_id              = oci_core_virtual_network.vcn.id
  availability_domain = var.availability_domain
  display_name        = "terraform_subnet"
  cidr_block          = var.subnet_cidr_block
  security_list_ids   = [var.security_list_id]
  route_table_id      = oci_core_route_table.public_rt.id 
}

resource "oci_core_internet_gateway" "igw" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "MyInternetGateway"
}

resource "oci_core_route_table" "public_rt" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "PublicRouteTable"

  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.igw.id
    description       = "Route to IGW for Internet-bound traffic"
  }
}
