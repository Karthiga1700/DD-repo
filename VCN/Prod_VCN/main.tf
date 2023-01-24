variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

######################################

######        Prod_vcn          ######

######################################


variable "Prod_vcn_cidr_block" {}
variable "Prod_vcn_display_name" {}
variable "Prod_vcn_dns_label" {}

variable "Prod_subnet_cidr_block" {}
variable "Prod_subnet_display_name" {}
variable "Prod_subnet_dns_label" {}
variable "Prod_subnet_prohibit_public_ip_on_vnic" {}

resource "oci_core_vcn" "Prod_vcn" {
    #Required
    compartment_id = var.compartment_ocid
    cidr_block = var.Prod_vcn_cidr_block
    display_name = var.Prod_vcn_display_name
    dns_label = var.Prod_vcn_dns_label
}

resource "oci_core_subnet" "Prod_subnet" {
    #Required
    cidr_block = var.Prod_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Prod_vcn.id
    display_name = var.Prod_subnet_display_name
    dns_label = var.Prod_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.Prod_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.Prod_route_table.id
    security_list_ids = [oci_core_security_list.Prod_security_list.id]
}

resource "oci_core_route_table" "Prod_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Prod_vcn.id
}

resource "oci_core_route_table_attachment" "Prod_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.Prod_subnet.id
  route_table_id =oci_core_route_table.Prod_route_table.id
}

resource "oci_core_security_list" "Prod_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Prod_vcn.id
}