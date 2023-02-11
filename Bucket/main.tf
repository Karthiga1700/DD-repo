provider "oci" {
    tenancy_id = var.tenancy_ocid
    region = var.region
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.compartment_ocid
    name = var.bucket_name
    namespace = var.bucket_namespace
}