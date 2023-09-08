output "mimir_proxy_endpoint" {
  description = "The Mimir endpoint"
  value       = module.proxy.proxy_endpoint
}

output "mimir_proxy_password" {
  description = "The Mimir password"
  value       = module.proxy.proxy_password
  sensitive   = true
}
