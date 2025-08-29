    terraform {
      backend "azurerm" {
        resource_group_name  = "terraform-backend"
        storage_account_name = "terraformmbackendaccount" # Replace with your unique name
        container_name       = "terraform-backend-cont"
        key                  = "my-project.tfstate"
      }
    }