data "oci_identity_compartments" "this" {
    compartment_id = var.tenancy_ocid
}