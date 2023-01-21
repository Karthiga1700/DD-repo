# The configuration for the `remote` backend.
     terraform {
      backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "DD-organization"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
          name = "DD-repo-workspace"
        }       
        }
     }

    # An example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing!"
      }
     }