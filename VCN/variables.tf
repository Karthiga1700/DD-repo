variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}

#### Hub VCN ###########

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


#### Non_Prod VCN ###########

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

#### Prod VCN ###########

variable "Prod_vcn_cidr_block" {}
variable "Prod_vcn_display_name" {}
variable "Prod_vcn_dns_label" {}

variable "Prod_subnet_cidr_block" {}
variable "Prod_subnet_display_name" {}
variable "Prod_subnet_dns_label" {}
variable "Prod_subnet_prohibit_public_ip_on_vnic" {}
