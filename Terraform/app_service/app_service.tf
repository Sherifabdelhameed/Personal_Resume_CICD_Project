resource "azurerm_service_plan" "app_service" {
  name                = "my_web_app_service"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app" {
  name                = "my-dockerapp-${random_integer.suffix.result}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.app_service.id

  site_config {
    application_stack {
      docker_image_name   = "sherifabdelhameed/my-resume:latest"
      docker_registry_url = "https://index.docker.io"
    }
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }
}

resource "random_integer" "suffix" {
  min = 1000
  max = 9999
}