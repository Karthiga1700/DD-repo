variable "compartment_ocid" {
    default = "ocid1.compartment.oc1..aaaaaaaajegjm76o2n7e3uwhbf2a4gu7sf7exez4tliwjhxnfuhlymg2636a"
}
variable "tenancy_ocid" {
    default = "ocid1.tenancy.oc1..aaaaaaaa3ei4wqe5mtkjt6cbfvtvr2gbwiet745mgbp7isnnjjqssqelteba"
}
variable "region" {
    default = "us-phoenix-1"
}

#### Hub VCN ###########

variable "Hub_vcn_cidr_block" {
    default = "10.0.0.0/16"
}
variable "Hub_vcn_display_name" {
    default = "Hub vcn"
}
variable "Hub_vcn_dns_label" {
    default = "Hub vcn"
}

variable "NLB_subnet_cidr_block" {
    default = "10.0.1.0/24"
}
variable "NLB_subnet_display_name" {
    default = "NLB subnet"
}
variable "NLB_subnet_dns_label" {
    default = "NLB subnet"
}
variable "NLB_subnet_prohibit_public_ip_on_vnic" {
    default = "false"
}

variable "Untrust_subnet_cidr_block" {
    default = "10.0.2.0/24"
}
variable "Untrust_subnet_display_name" {
    default = "Untrust subnet"
}
variable "Untrust_subnet_dns_label" {
    default = "Untrust subnet"
}
variable "Untrust_subnet_prohibit_public_ip_on_vnic" {
    default = "false"
}

variable "Management_subnet_cidr_block" {
    default = "10.0.3.0/24"
}
variable "Management_subnet_display_name" {
    default = "Management subnet"
}
variable "Management_subnet_dns_label" {
    default = "Management subnet"
}
variable "Management_subnet_prohibit_public_ip_on_vnic" {
    default = "false"
}

variable "Trust_subnet_cidr_block" {
    default = "10.0.4.0/24"
}
variable "Trust_subnet_display_name" {
    default = "Trust subnet"
}
variable "Trust_subnet_dns_label" {
    default = "Trust subnet"
}
variable "Trust_subnet_prohibit_public_ip_on_vnic" {
    default = "false"
}


#### Non_Prod VCN ###########

variable "Non_Prod_vcn_cidr_block" {
     default = "10.1.0.0/16"
}
variable "Non_Prod_vcn_display_name" {
     default = "NonProd vcn"
}
variable "Non_Prod_vcn_dns_label" {
    default = "NonProd vcn"
}

variable "Dev_subnet_cidr_block" {
    default = "10.1.1.0/24"
}
variable "Dev_subnet_display_name" {
    default = "Dev subnet"
}
variable "Dev_subnet_dns_label" {
    default = "Dev subnet"
}
variable "Dev_subnet_prohibit_public_ip_on_vnic" {
    default = "false"
}

variable "Test_subnet_cidr_block" {
    default = "10.1.2.0/24"
}
variable "Test_subnet_display_name" {
    default = "Test subnet"
}
variable "Test_subnet_dns_label" {
     default = "Test subnet"
}
variable "Test_subnet_prohibit_public_ip_on_vnic" {
     default = "false"
}

#### Prod VCN ###########

variable "Prod_vcn_cidr_block" {
    default = "10.2.0.0/16"
}
variable "Prod_vcn_display_name" {
    default = "Prod vcn"
}
variable "Prod_vcn_dns_label" {
     default = "Prod vcn"
}

variable "Prod_subnet_cidr_block" {
    default = "10.2.1.0/24"
}
variable "Prod_subnet_display_name" {
    default = "Prod Subnet"
}
variable "Prod_subnet_dns_label" {
    default = "prodsubnet"
}
variable "Prod_subnet_prohibit_public_ip_on_vnic" {
    default = "false"
}
