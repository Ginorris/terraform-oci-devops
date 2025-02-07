variable "compartment_id" {
  description = "The OCID of the compartment for networking"
  type        = string
}

variable "availability_domain" {
  description = "The availability domain to use"
  type        = string
}

variable "vcn_cidr_block" {
  description = "The CIDR block for the VCN"
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}
