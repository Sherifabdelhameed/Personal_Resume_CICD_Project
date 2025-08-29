output "web_app_url" {
  description = "The default hostname of the web app"
  value       = azurerm_linux_web_app.app.default_hostname
}

output "web_app_name" {
  description = "The name of the web app"
  value       = azurerm_linux_web_app.app.name
}