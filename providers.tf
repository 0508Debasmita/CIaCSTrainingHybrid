terraform {
  required_providers {
    aws = {
    source  = "hashicorp/aws"
    version = "~> 3.27"
    }

    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }

  required_version = ">= 0.14.9"
}
