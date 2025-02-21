# The block below configures Terraform to use the 'remote' backend with HCP Terraform.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  cloud {
    organization = "aura-validation"
    hostname = "app.terraform.io"

    workspaces {
      name = "validate-tf"
    }
  }

  required_version = ">= 1.1.2"
}
