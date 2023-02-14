resource "oci_identity_compartment" "this" {
  count          = length(data.oci_identity_compartments.this.compartments) == 0 ? 1 : 0
  compartment_id = var.compartment_ocid
  name           = var.compartment_name
  description    = var.compartment_description
  enable_delete  = var.enable_delete
}

data "oci_identity_compartments" "this" {
  compartment_id = var.tenancy_ocid
  name           = var.compartment_name
  compartment_id_in_subtree = true 
}