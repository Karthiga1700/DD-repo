variable "compartment_ocid" {}
variable "region" {}
variable "bucket_name" {}
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}

provider oci {
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid
  fingerprint = var.fingerprint
  region = var.region
}

data "oci_objectstorage_namespace" "namespace" {
    compartment_id = var.compartment_ocid
}

resource "oci_objectstorage_bucket" "create_bucket" {
    compartment_id = var.compartment_ocid
    name = var.bucket_name
    namespace = data.oci_objectstorage_namespace.namespace.namespace
    access_type = "NoPublicAccess" 
}

output "new_bucket" {
  value = oci_objectstorage_bucket.create_bucket
}
