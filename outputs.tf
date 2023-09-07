output "mimir_endpoint" {
  description = "The Mimir endpoint"
  value       = cloudfoundry_route.mimir.endpoint
}
