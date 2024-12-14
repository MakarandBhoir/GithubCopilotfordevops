// Create resource group in Azure with name terraform-rg, keep the location as West US
resource "azurerm_resource_group" "rg" {
  name     = "terraform-rg"
  location = var.location

  tags = {
    environment = "development"
    project     = "terraform-app"
  }
}

// Create a app service plan with name terraform-appservice-plan, keep the location as West US and keep standard plan
resource "azurerm_app_service_plan" "appserviceplan" {
  name                = var.appservice_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Windows"
  reserved            = false

  sku {
    tier = "Standard"
    size = "S1"
  }
}

// Create a app service with terraform-app and which should run on tomcat 9
resource "azurerm_app_service" "appservice" {
  name                = "terraform-app"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id

  site_config {
    java_version           = "11"
    java_container         = "TOMCAT"
    java_container_version = "9.0"
  }

  app_settings = {
    "WEBSITE_JAVA_VERSION"      = "1.8"
    "WEBSITE_WEBDEPLOY_USE_SCM" = "true"
  }

  tags = {
    environment = "development"
    project     = "terraform-app"
  }
}

