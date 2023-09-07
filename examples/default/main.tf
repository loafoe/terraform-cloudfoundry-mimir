data "hsdp_config" "cf" {
  service = "cf"
}

module "mimir" {
  source      = "../../"
  cf_domain   = data.hsdp_config.cf.domain
  cf_space_id = "test"

  name_postfix = "test"
}
