## Version of Terraform to be used
provider "aws" {
  region  = var.region
  profile = var.profile
}


terraform {
  required_version = "<=v1.10.5" # Change this to your terraform S/W version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0" # Change this to supported version of above
    }
  }
}