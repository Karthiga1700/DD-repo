provider "oci" {
  region = var.region
  tenancy_ocid = var.tenancy_ocid
}

######################################

######        Hub_vcn          ######

######################################

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
    security_list_ids = oci_core_security_list.NLB_security_list.id
    
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
    security_list_ids = oci_core_security_list.Untrust_security_list.id
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
    security_list_ids = oci_core_security_list.Management_security_list.id
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
    security_list_ids = oci_core_security_list.Trust_security_list.id
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

######################################

######      Non_Prod_vcn      ######

######################################

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
    security_list_ids = oci_core_security_list.Dev_security_list.id
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
    security_list_ids = oci_core_security_list.Test_security_list.id
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

######################################

######        Prod_vcn          ######

######################################

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
    security_list_ids = oci_core_security_list.Prod_security_list.id
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