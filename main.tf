resource "cloudfoundry_app" "mimir" {
  name         = "tf-mimir-${var.name_postfix}"
  space        = var.cf_space_id
  memory       = var.memory
  disk_quota   = var.disk
  docker_image = var.mimir_image
  docker_credentials = {
    username = var.docker_username
    password = var.docker_password
  }

  environment = merge({
    MIMIRCONFIG_BASE64 = base64encode(templatefile("${path.module}/templates/config.yaml", {
    }))
  }, {})

  command           = "mkdir -p /etc/mimir && echo $MIMIRCONFIG_BASE64 | base64 -d > /etc/mimir/config.yaml && mimir -config.file=/etc/mimir/config.yaml"
  health_check_type = "process"
  strategy          = "rolling"

  //noinspection HCLUnknownBlockType
  routes {
    route = cloudfoundry_route.mimir.id
  }
}

resource "cloudfoundry_route" "mimir" {
  domain   = data.cloudfoundry_domain.domain.id
  space    = var.cf_space_id
  hostname = "tf-mimir-${var.name_postfix}"
}
