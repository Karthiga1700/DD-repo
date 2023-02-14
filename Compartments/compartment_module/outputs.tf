
output "compartment_ocid" {
  description = "Compartment OCID"
  value = length(data.oci_identity_compartments.this.compartments) == 0 ? oci_identity_compartment.this[0].id : data.oci_identity_compartments.this.compartments[0].id
}