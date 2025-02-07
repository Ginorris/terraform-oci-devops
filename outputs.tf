output "vcn_id" {
  value = module.vcn.vcn_id
}

output "subnet_id" {
  value = module.vcn.subnet_id
}

output "instance_public_ip" {
  value = module.compute.instance_public_ip
}
