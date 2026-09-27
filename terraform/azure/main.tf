terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" { features {} }

resource "azurerm_resource_group" "reference" {
  name = "${var.project_name}-${var.environment}"
  location = var.location
  tags = {
    Project = var.project_name
    Environment = var.environment
    ManagedBy = "terraform"
  }
}

resource "azurerm_storage_account" "application" {
  name = var.storage_account_name
  resource_group_name = azurerm_resource_group.reference.name
  location = azurerm_resource_group.reference.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  public_network_access_enabled = false
}
