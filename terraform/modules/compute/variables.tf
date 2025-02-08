variable "compartment_id" {
  description = "The OCID of the compartment for networking"
  type        = string
}

variable "availability_domain" {
  description = "The availability domain to use"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be created"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key path"
  type        = string
}
