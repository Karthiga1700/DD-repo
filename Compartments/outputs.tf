output "dd_hub" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_hub_compartment_name,
    ocid        = module.dd_hub.compartment_ocid,
  }
}

output "dd_monitoring" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_monitoring_compartment_name,
    ocid        = module.dd_monitoring.compartment_ocid,
  }
}



output "dd_network" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_network_compartment_name,
    ocid        = module.dd_network.compartment_ocid,
  }
}

output "dd_security" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_security_compartment_name,
    ocid        = module.dd_security.compartment_ocid,
  }
}

output "dd_nonprod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_nonprod_compartment_name,
    ocid        = module.dd_nonprod.compartment_ocid,
  }
}


output "dd_nonprod_dev" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_nonprod_dev_compartment_name,
    ocid        = module.dd_nonprod_dev.compartment_ocid,
  }
}

output "dd_nonprod_tst" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_nonprod_tst_compartment_name,
    ocid        = module.dd_nonprod_tst.compartment_ocid,
  }
}

output "dd_appdev" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_appdev_compartment_name,
    ocid        = module.dd_appdev.compartment_ocid,
  }
}

output "dd_dbdev" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_dbdev_compartment_name,
    ocid        = module.dd_dbdev.compartment_ocid,
  }
}


output "dd_apptst" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_apptst_compartment_name,
    ocid        = module.dd_apptst.compartment_ocid,
  }
}


output "dd_dbtst" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_dbtst_compartment_name,
    ocid        = module.dd_dbtst.compartment_ocid,
  }
}

output "dd_prod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_prod_compartment_name,
    ocid        = module.dd_prod.compartment_ocid,
  }
}


output "dd_appprod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_appprod_compartment_name,
    ocid        = module.dd_appprod.compartment_ocid,
  }
}


output "dd_dbprod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dd_dbprod_compartment_name,
    ocid        = module.dd_dbprod.compartment_ocid,
  }
}