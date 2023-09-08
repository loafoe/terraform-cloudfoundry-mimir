output "proxy_username" {
  value = "mimir"
}

output "proxy_password" {
  description = "The Loki proxy password. Username is always 'mimir'"
  value       = random_password.proxy_password.result
  sensitive   = true
}

output "proxy_endpoint" {
  description = "The Loki proxy endpoint"
  value       = cloudfoundry_route.proxy.endpoint
}
