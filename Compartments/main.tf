
#### compartment dd-hub ######

module "dd_hub" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.tenancy_ocid
  compartment_name        = var.dd_hub_compartment_name
  compartment_description = var.dd_hub_compartment_description
  enable_delete           = var.dd_hub_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}
#### compartment dd-monitoring ######

module "dd_monitoring" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.tenancy_ocid
  compartment_name        = var.dd_monitoring_compartment_name
  compartment_description = var.dd_monitoring_compartment_description
  enable_delete           = var.dd_monitoring_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### compartment dd-network ######

module "dd_network" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.tenancy_ocid
  compartment_name        = var.dd_network_compartment_name
  compartment_description = var.dd_network_compartment_description
  enable_delete           = var.dd_network_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### compartment dd-security ######

module "dd_security" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.tenancy_ocid
  compartment_name        = var.dd_security_compartment_name
  compartment_description = var.dd_security_compartment_description
  enable_delete           = var.dd_security_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### compartment dd-nonprod ######

module "dd_nonprod" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.tenancy_ocid
  compartment_name        = var.dd_nonprod_compartment_name
  compartment_description = var.dd_nonprod_compartment_description
  enable_delete           = var.dd_nonprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### sub-compartments of dd-nonprod ######


module "dd_nonprod_dev" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_nonprod.compartment_ocid
  compartment_name        = var.dd_nonprod_dev_compartment_name
  compartment_description = var.dd_nonprod_dev_compartment_description
  enable_delete           = var.dd_nonprod_dev_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

module "dd_nonprod_tst" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_nonprod.compartment_ocid
  compartment_name        = var.dd_nonprod_tst_compartment_name
  compartment_description = var.dd_nonprod_tst_compartment_description
  enable_delete           = var.dd_nonprod_tst_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### sub-compartments of dd-nonprod-dev ######

module "dd_appdev" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_nonprod_dev.compartment_ocid
  compartment_name        = var.dd_appdev_compartment_name
  compartment_description = var.dd_appdev_compartment_description
  enable_delete           = var.dd_appdev_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

module "dd_dbdev" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_nonprod_dev.compartment_ocid
  compartment_name        = var.dd_dbdev_compartment_name
  compartment_description = var.dd_dbdev_compartment_description
  enable_delete           = var.dd_dbdev_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### sub-compartments of dd-nonprod-tst ######

module "dd_apptst" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_nonprod_tst.compartment_ocid
  compartment_name        = var.dd_apptst_compartment_name
  compartment_description = var.dd_apptst_compartment_description
  enable_delete           = var.dd_apptst_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

module "dd_dbtst" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_nonprod_tst.compartment_ocid
  compartment_name        = var.dd_dbtst_compartment_name
  compartment_description = var.dd_dbtst_compartment_description
  enable_delete           = var.dd_dbtst_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### compartment of dd-prod ######

module "dd_prod" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.tenancy_ocid
  compartment_name        = var.dd_prod_compartment_name
  compartment_description = var.dd_prod_compartment_description
  enable_delete           = var.dd_prod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### sub-compartments of dd-prod ######

module "dd_appprod" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_prod.compartment_ocid
  compartment_name        = var.dd_appprod_compartment_name
  compartment_description = var.dd_appprod_compartment_description
  enable_delete           = var.dd_appprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

module "dd_dbprod" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.dd_prod.compartment_ocid
  compartment_name        = var.dd_dbprod_compartment_name
  compartment_description = var.dd_dbprod_compartment_description
  enable_delete           = var.dd_dbprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}