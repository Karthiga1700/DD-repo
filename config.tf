terraform {
  cloud {
    organization = "DD-organization"

    workspaces {
      name = "DD-repo-workspace"
    }
  }
}