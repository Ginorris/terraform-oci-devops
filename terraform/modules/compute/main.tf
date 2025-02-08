data "oci_core_images" "ubuntu" {
  compartment_id   = var.compartment_id
  operating_system = "Canonical Ubuntu"
  shape            = "VM.Standard.A1.Flex"
  sort_by          = "TIMECREATED"
  sort_order       = "DESC"
}

resource "oci_core_instance" "ubuntu_instance" {
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  shape               = "VM.Standard.A1.Flex"
  display_name        = "Always-Free-Ubuntu-Instance"

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key)
  }

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.ubuntu.images[0].id
  }

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
    display_name     = "terraform_vnic"
  }

  shape_config {
    ocpus         = 1
    memory_in_gbs = 6
  }
}
