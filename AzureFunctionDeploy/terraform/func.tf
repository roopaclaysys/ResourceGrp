terraform {
  required_version = ">= 0.14"
}

provider "azurerm" {
  subscription_id = var.SUBSCRIPTION_ID
  tenant_id       = var.TENANT_ID
  features {}
}

resource "azurerm_resource_group" "reso-pipel" {
  name     = var.RESOURCE_GROUP
  location = var.LOCATION
}
resource "azurerm_application_insights" "func_application_insights" {
  name                = "func-application1-insights"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP
  application_type    = "Node.JS"
}


