variable "compartment_id" {
  description = "The OCID of the compartment"
  type        = string
}

variable "vcn_id" {
  description = "The ID of the VCN where security lists will be applied"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "The IP allowed to SSH into the instance"
  type        = string
}
