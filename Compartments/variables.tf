variable "region" {}
variable "tenancy_ocid" {}

# variable "compartment_ocid" { }

# variable "compartment_ocid" {
#   type = string
#   description = "Provide the OCID of the root compartment, ACC-29882-CorpFin containing the compartment. Allow for sub-compartments creation"
#   default     = ""
# }


### Compartment for dd-hub ###

variable "dd_hub_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-hub"
}

variable "dd_hub_compartment_description" {
    type = string
    description = "compartment description"
  default     = "Compartment for all resources related to dd_hub"
}

variable "dd_hub_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### Comparment for dd-monitoring ###

variable "dd_monitoring_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-monitoring"
}

variable "dd_monitoring_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to  dd-monitoring"
}

variable "dd_monitoring_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### compartment for dd-network ####


variable "dd_network_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-network"
}

variable "dd_network_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-network"
}

variable "dd_network_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### compartment for dd-security ###

variable "dd_security_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd_security"
}

variable "dd_security_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd_security"
}

variable "dd_security_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### compartment for dd-nonprod ###

variable "dd_nonprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-nonprod"
}

variable "dd_nonprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-nonprod"
}

variable "dd_nonprod_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-nonprod ###

variable "dd_nonprod_dev_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-nonprod-dev"
}

variable "dd_nonprod_dev_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-nonprod-dev"
}

variable "dd_nonprod_dev_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-nonprod ###

variable "dd_nonprod_tst_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-nonprod-tst"
}

variable "dd_nonprod_tst_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-nonprod-tst"
}

variable "dd_nonprod_tst_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-nonprod-dev ###

variable "dd_appdev_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-appdev"
}

variable "dd_appdev_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-appdev"
}

variable "dd_appdev_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-nonprod-dev ###

variable "dd_dbdev_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-dbdev"
}

variable "dd_dbdev_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-dbdev"
}

variable "dd_dbdev_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-nonprod-tst ###

variable "dd_apptst_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-apptst"
}

variable "dd_apptst_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-apptst"
}

variable "dd_apptst_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-nonprod-tst ###

variable "dd_dbtst_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-dbtst"
}

variable "dd_dbtst_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-dbtst"
}

variable "dd_dbtst_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### compartment for dd-prod ###

variable "dd_prod_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-prod"
}

variable "dd_prod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-prod"
}

variable "dd_prod_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-prod ###

variable "dd_appprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-appprod"
}

variable "dd_appprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-appprod"
}

variable "dd_appprod_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

### sub-compartment for dd-prod ###


variable "dd_dbprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "dd-dbprod"
}

variable "dd_dbprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all resources related to dd-dbprod"
}

variable "dd_dbprod_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}