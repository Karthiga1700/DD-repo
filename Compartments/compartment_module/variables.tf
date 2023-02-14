variable "tenancy_ocid" {
  type = string
  description = "The OCID of the tenancy."
  default = ""
}

variable "compartment_ocid" {
  type = string
  description = "Provide the OCID of the root compartment, ACC-29882-CorpFin containing the compartment. Allow for sub-compartments creation"
  default     = ""
}

variable "compartment_name" {
  type = string
  description = "The name you assign to the compartment during creation. The name must be unique across all compartments in the tenancy. "
  default     = ""
}

variable "compartment_description" {
  type = string
  description = "The description you assign to the compartment. Does not have to be unique, and it's changeable."
  default     = ""
}

variable "enable_delete" {
  type = bool
  description = "Enable compartment delete on destroy. If true, compartment will be deleted when `terraform destroy` is executed; If false, compartment will not be deleted on `terraform destroy` execution"
}
