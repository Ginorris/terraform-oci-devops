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
