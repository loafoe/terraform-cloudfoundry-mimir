variable "cf_domain" {
  type        = string
  description = "The CF domain name to use"
}

variable "cf_space_id" {
  type        = string
  description = "The CF Space to deploy in"
}

variable "name_postfix" {
  type        = string
  description = "The postfix string to append to the hostname, prevents namespace clashes"
}

variable "memory" {
  type        = number
  description = "The amount of RAM to allocate for Grafana Mimir (MB)"
  default     = 6144
}

variable "disk" {
  type        = number
  description = "The amount of Disk space to allocate for Grafana Mimir (MB)"
  default     = 20480
}

variable "docker_username" {
  type        = string
  description = "Docker registry username"
  default     = ""
}

variable "docker_password" {
  type        = string
  description = "Docker registry password"
  default     = ""
}

variable "mimir_image" {
  type        = string
  description = "Mimir server image to use"
  default     = "ghcr.io/loafoe/mimir:v0.0.2-alpine-cf"
}

variable "s3_credentials" {
  type = object({
    access_key = string
    secret_key = string
    endpoint   = string
    bucket     = string
  })
  default = {
    access_key = ""
    secret_key = ""
    endpoint   = ""
    bucket     = ""
  }
}
