provider "oci" {
    tenancy_ocid = var.tenancy_ocid
    region = var.region
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.compartment_ocid
    name = var.bucket_name
    namespace = data.oci_objectstorage_namespace.test_bucket.namespace
}
