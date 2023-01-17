data oci_objectstorage_namespace export_namespace {
  compartment_id = var.compartment_ocid
}
 provider "oci" {
        region             = var.region
        tenancy_ocid       = var.tenancy_ocid
        }
 
variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" { 
  type = map
  default = {} 
}
	
   variable "bucket_name" {
   default = "Object_Bucket"
    }
   variable "bucket_storage_tier" {
	default = "Standard"
	}
   variable "bucket_access_type" {
	default = "NoPublicAccess" 
	}
   variable "bucket_versioning" {
	default = "Enabled"
	}
   variable "auto_tiering" {
      default = "InfrequentAccess"
   }
  variable "object_event_enabled" {
      default = "false"
   }
   
  resource "oci_objectstorage_bucket"  "Object_Bucket"  {  
    compartment_id      = var.compartment_ocid
    name                = var.bucket_name     
    namespace           = data.oci_objectstorage_namespace.export_namespace.namespace
    access_type         = var.bucket_access_type
    defined_tags        = var.project_tag
    storage_tier        = var.bucket_storage_tier
    versioning          = var.bucket_versioning
    object_events_enabled = var.object_event_enabled
    auto_tiering          = var.auto_tiering
    }
