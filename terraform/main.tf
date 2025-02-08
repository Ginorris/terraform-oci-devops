data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

module "vcn" {
  source              = "./modules/vcn"
  compartment_id      = var.compartment_id
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  vcn_cidr_block      = var.vcn_cidr_block
  subnet_cidr_block   = var.subnet_cidr_block
}

module "compute" {
  source              = "./modules/compute"
  compartment_id      = var.compartment_id
  subnet_id           = module.vcn.subnet_id
  ssh_public_key      = var.ssh_public_key
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
}
