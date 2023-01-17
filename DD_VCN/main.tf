data oci_objectstorage_namespace export_namespace {
  compartment_id = var.OCI_CLI_COMPARTMENT
}
 provider "oci" {
        OCI_CLI_REGION             = var.OCI_CLI_REGION
        OCI_CLI_TENANCY       = var.OCI_CLI_TENANCY
        }
 
variable "OCI_CLI_TENANCY" {}
variable "OCI_CLI_REGION" {}
variable "OCI_CLI_COMPARTMENT" {}
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
    compartment_id      = var.OCI_CLI_COMPARTMENT
    name                = var.bucket_name     
    namespace           = data.oci_objectstorage_namespace.export_namespace.namespace
    access_type         = var.bucket_access_type
    defined_tags        = var.project_tag
    storage_tier        = var.bucket_storage_tier
    versioning          = var.bucket_versioning
    object_events_enabled = var.object_event_enabled
    auto_tiering          = var.auto_tiering
    }
