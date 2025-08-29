module "Resource_group" {
  source = "./Resource_group"
}

module "app_service" {
  source                     = "./app_service"
  resource_group_name        = module.Resource_group.resource_group_name
  resource_group_location    = module.Resource_group.resource_group_location
}

output "web_app_url" {
  description = "The URL of the deployed web application"
  value       = "https://${module.app_service.web_app_url}"
}