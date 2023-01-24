provider "oci" {
  region = var.region
  tenancy_ocid = var.tenancy_ocid
}

 module "Hub_VCN" {
    source             = "./Hub_VCN"
    compartment_ocid   = var.compartment_ocid
    region             = var.region
    tenancy_ocid       = var.tenancy_ocid
   Hub_vcn_cidr_block = var.Hub_vcn_cidr_block
    Hub_vcn_display_name = var.Hub_vcn_display_name
    Hub_vcn_dns_label = var.Hub_vcn_dns_label
    NLB_subnet_cidr_block = var.NLB_subnet_cidr_block
    NLB_subnet_display_name = var.NLB_subnet_display_name
    NLB_subnet_dns_label = var.NLB_subnet_dns_label
   NLB_subnet_prohibit_public_ip_on_vnic = var.NLB_subnet_prohibit_public_ip_on_vnic
   Untrust_subnet_cidr_block = var.Untrust_subnet_cidr_block
   Untrust_subnet_display_name = var.Untrust_subnet_display_name
    Untrust_subnet_dns_label = var.Untrust_subnet_dns_label 
    Untrust_subnet_prohibit_public_ip_on_vnic = var.Untrust_subnet_prohibit_public_ip_on_vnic
    Management_subnet_cidr_block = var.Management_subnet_cidr_block
    Management_subnet_display_name = var.Management_subnet_display_name
    Management_subnet_dns_label = var.Management_subnet_dns_label 
    Management_subnet_prohibit_public_ip_on_vnic = var.Management_subnet_prohibit_public_ip_on_vnic
    Trust_subnet_cidr_block = var.Trust_subnet_cidr_block
    Trust_subnet_display_name = var.Trust_subnet_display_name
    Trust_subnet_dns_label = var.Trust_subnet_dns_label 
    Trust_subnet_prohibit_public_ip_on_vnic = var.Trust_subnet_prohibit_public_ip_on_vnic
 }

 module "Non_Prod_VCN" {
    source             = "./Non_Prod_VCN"
    compartment_ocid   = var.compartment_ocid
    region             = var.region
    tenancy_ocid       = var.tenancy_ocid
    Non_Prod_vcn_cidr_block = var.Non_Prod_vcn_cidr_block
    Non_Prod_vcn_display_name = var.Non_Prod_vcn_display_name
    Non_Prod_vcn_dns_label = var.Non_Prod_vcn_dns_label
    Dev_subnet_cidr_block = var.Dev_subnet_cidr_block
    Dev_subnet_display_name = var.Dev_subnet_display_name
    Dev_subnet_dns_label = var.Dev_subnet_dns_label 
    Dev_subnet_prohibit_public_ip_on_vnic = var.Dev_subnet_prohibit_public_ip_on_vnic
    Test_subnet_cidr_block = var.Test_subnet_cidr_block
    Test_subnet_display_name = var.Test_subnet_display_name
    Test_subnet_dns_label = var.Test_subnet_dns_label 
    Test_subnet_prohibit_public_ip_on_vnic = var.Test_subnet_prohibit_public_ip_on_vnic
 }

module "Prod_VCN" {
    source             = "./Prod_VCN"
    compartment_ocid   = var.compartment_ocid
    region             = var.region
    tenancy_ocid       = var.tenancy_ocid
    Prod_vcn_cidr_block = var.Prod_vcn_cidr_block
    Prod_vcn_display_name = var.Prod_vcn_display_name
    Prod_vcn_dns_label = var.Prod_vcn_dns_label
   Prod_subnet_cidr_block = var.Prod_subnet_cidr_block
   Prod_subnet_display_name = var.Prod_subnet_display_name
   Prod_subnet_dns_label = var.Prod_subnet_dns_label 
   Prod_subnet_prohibit_public_ip_on_vnic = var.Prod_subnet_prohibit_public_ip_on_vnic
}

    
    
    

