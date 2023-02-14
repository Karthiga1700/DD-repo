provider "oci" {
    tenancy_ocid = var.tenancy_ocid
    region = var.region
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.compartment_ocid
    name = var.bucket_name
<<<<<<< HEAD
    namespace = var.bucket_namespace
=======
    namespace = data.oci_objectstorage_namespace.test_namespace.namespace
>>>>>>> 46d5f70c3fe13906fd6ff92fc39942c9b5a7d6cf
}

data "oci_objectstorage_namespace" "test_namespace" {
    #Optional
    compartment_id = var.compartment_ocid
}
