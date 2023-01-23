variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

######################################

######      Non_Prod_vcn      ######

######################################

variable "Non_Prod_vcn_cidr_block" {}
variable "Non_Prod_vcn_display_name" {}
variable "Non_Prod_vcn_dns_label" {}

variable "Dev_subnet_cidr_block" {}
variable "Dev_subnet_display_name" {}
variable "Dev_subnet_dns_label" {}
variable "Dev_subnet_prohibit_public_ip_on_vnic" {}

variable "Test_subnet_cidr_block" {}
variable "Test_subnet_display_name" {}
variable "Test_subnet_dns_label" {}
variable "Test_subnet_prohibit_public_ip_on_vnic" {}

resource "oci_core_vcn" "Non_Prod_vcn" {
    #Required
    compartment_id = var.compartment_ocid
    cidr_block = var.Non_Prod_vcn_cidr_block
    display_name = var.Non_Prod_vcn_display_name
    dns_label = var.Non_Prod_vcn_dns_label
}

resource "oci_core_subnet" "Dev_subnet" {
    #Required
    cidr_block = var.Dev_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Non_Prod_vcn.id
    display_name = var.Dev_subnet_display_name
    dns_label = var.Dev_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.Dev_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.Dev_route_table.id
    security_list_ids = [oci_core_security_list.Dev_security_list.id]
}

resource "oci_core_route_table" "Dev_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Non_Prod_vcn.id
}

resource "oci_core_route_table_attachment" "Dev_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.Dev_subnet.id
  route_table_id =oci_core_route_table.Dev_route_table.id
}

resource "oci_core_security_list" "Dev_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Non_Prod_vcn.id
}

resource "oci_core_subnet" "Test_subnet" {
    #Required
    cidr_block = var.Test_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Non_Prod_vcn.id
    display_name = var.Test_subnet_display_name
    dns_label = var.Test_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.Test_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.Test_route_table.id
    security_list_ids = [oci_core_security_list.Test_security_list.id]
}

resource "oci_core_route_table" "Test_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Non_Prod_vcn.id
}

resource "oci_core_route_table_attachment" "Test_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.Test_subnet.id
  route_table_id =oci_core_route_table.Test_route_table.id
}

resource "oci_core_security_list" "Test_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Non_Prod_vcn.id
}