variable "compartment_id" {
  description = "The OCID of your compartment"
  type        = string
}

variable "tenancy_ocid" {
  description = "The OCID of your tenancy"
  type        = string
}

variable "user_ocid" {
  description = "The OCID of your OCI user"
  type        = string
}

variable "fingerprint" {
  description = "Fingerprint for your API key"
  type        = string
}

variable "private_key_path" {
  description = "Path to your OCI API private key file"
  type        = string
}

variable "region" {
  description = "OCI region (e.g., us-ashburn-1)"
  type        = string
}

variable "ssh_public_key" {
  description = "Path to your SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "vcn_cidr_block" {
  description = "The CIDR block for the VCN"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
