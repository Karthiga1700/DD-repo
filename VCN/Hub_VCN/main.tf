variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

######################################

######        Hub_vcn          ######

######################################

variable "Hub_vcn_cidr_block" {}
variable "Hub_vcn_display_name" {}
variable "Hub_vcn_dns_label" {}

variable "NLB_subnet_cidr_block" {}
variable "NLB_subnet_display_name" {}
variable "NLB_subnet_dns_label" {}
variable "NLB_subnet_prohibit_public_ip_on_vnic" {}

variable "Untrust_subnet_cidr_block" {}
variable "Untrust_subnet_display_name" {}
variable "Untrust_subnet_dns_label" {}
variable "Untrust_subnet_prohibit_public_ip_on_vnic" {}

variable "Management_subnet_cidr_block" {}
variable "Management_subnet_display_name" {}
variable "Management_subnet_dns_label" {}
variable "Management_subnet_prohibit_public_ip_on_vnic" {}

variable "Trust_subnet_cidr_block" {}
variable "Trust_subnet_display_name" {}
variable "Trust_subnet_dns_label" {}
variable "Trust_subnet_prohibit_public_ip_on_vnic" {}

resource "oci_core_vcn" "Hub_vcn" {
    #Required
    compartment_id = var.compartment_ocid
    cidr_block = var.Hub_vcn_cidr_block
    display_name = var.Hub_vcn_display_name
    dns_label = var.Hub_vcn_dns_label
}

resource "oci_core_subnet" "NLB_subnet" {
    #Required
    cidr_block = var.NLB_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
    display_name = var.NLB_subnet_display_name
    dns_label = var.NLB_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.NLB_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.NLB_route_table.id
    security_list_ids = [oci_core_security_list.NLB_security_list.id]
    
}

resource "oci_core_route_table" "NLB_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_route_table_attachment" "NLB_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.NLB_subnet.id
  route_table_id =oci_core_route_table.NLB_route_table.id
}

resource "oci_core_security_list" "NLB_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_subnet" "Untrust_subnet" {
    #Required
    cidr_block = var.Untrust_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
    display_name = var.Untrust_subnet_display_name
    dns_label = var.Untrust_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.Untrust_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.Untrust_route_table.id
    security_list_ids = [oci_core_security_list.Untrust_security_list.id]
}

resource "oci_core_route_table" "Untrust_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_route_table_attachment" "Untrust_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.Untrust_subnet.id
  route_table_id =oci_core_route_table.Untrust_route_table.id
}

resource "oci_core_security_list" "Untrust_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_subnet" "Management_subnet" {
    #Required
    cidr_block = var.Management_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
    display_name = var.Management_subnet_display_name
    dns_label = var.Management_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.Management_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.Management_route_table.id
    security_list_ids = [oci_core_security_list.Management_security_list.id]
}

resource "oci_core_route_table" "Management_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_route_table_attachment" "Management_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.Management_subnet.id
  route_table_id =oci_core_route_table.Management_route_table.id
}

resource "oci_core_security_list" "Management_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_subnet" "Trust_subnet" {
    #Required
    cidr_block = var.Trust_subnet_cidr_block
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
    display_name = var.Trust_subnet_display_name
    dns_label = var.Trust_subnet_dns_label 
    prohibit_public_ip_on_vnic = var.Trust_subnet_prohibit_public_ip_on_vnic
    route_table_id = oci_core_route_table.Trust_route_table.id
    security_list_ids = [oci_core_security_list.Trust_security_list.id]
}

resource "oci_core_route_table" "Trust_route_table" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_route_table_attachment" "Trust_route_table_attachment" {
  #Required    
  subnet_id = oci_core_subnet.Trust_subnet.id
  route_table_id =oci_core_route_table.Trust_route_table.id
}

resource "oci_core_security_list" "Trust_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}

resource "oci_core_internet_gateway" "Hub_internet_gateway" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.Hub_vcn.id
}