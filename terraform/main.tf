data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

module "security" {
  source         = "./modules/security"
  compartment_id = var.compartment_id
  vcn_id         = module.vcn.vcn_id
  allowed_ssh_ip = var.allowed_ssh_ip
}

module "vcn" {
  source              = "./modules/vcn"
  compartment_id      = var.compartment_id
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  vcn_cidr_block      = var.vcn_cidr_block
  subnet_cidr_block   = var.subnet_cidr_block
  security_list_id    = module.security.security_list_id
}

module "compute" {
  source              = "./modules/compute"
  compartment_id      = var.compartment_id
  subnet_id           = module.vcn.subnet_id
  ssh_public_key      = var.ssh_public_key
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
}
