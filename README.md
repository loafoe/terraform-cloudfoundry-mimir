# terraform-cloudfoundry-mimir
Deploys Grafana Mimir to Cloud foundry

# License
[License](./LICENSE.md) is MIT

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_cloudfoundry"></a> [cloudfoundry](#requirement\_cloudfoundry) | >= 0.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | 0.51.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudfoundry_app.mimir](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/app) | resource |
| [cloudfoundry_route.mimir](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/route) | resource |
| [cloudfoundry_domain.domain](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cf_domain"></a> [cf\_domain](#input\_cf\_domain) | The CF domain name to use | `string` | n/a | yes |
| <a name="input_cf_space_id"></a> [cf\_space\_id](#input\_cf\_space\_id) | The CF Space to deploy in | `string` | n/a | yes |
| <a name="input_disk"></a> [disk](#input\_disk) | The amount of Disk space to allocate for Grafana Mimir (MB) | `number` | `10240` | no |
| <a name="input_docker_password"></a> [docker\_password](#input\_docker\_password) | Docker registry password | `string` | `""` | no |
| <a name="input_docker_username"></a> [docker\_username](#input\_docker\_username) | Docker registry username | `string` | `""` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of RAM to allocate for Grafana Mimir (MB) | `number` | `2048` | no |
| <a name="input_mimir_image"></a> [mimir\_image](#input\_mimir\_image) | Mimir server image to use | `string` | `"ghcr.io/loafoe/mimir:v0.0.2-alpine-cf"` | no |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | The postfix string to append to the hostname, prevents namespace clashes | `string` | n/a | yes |
| <a name="input_s3_credentials"></a> [s3\_credentials](#input\_s3\_credentials) | n/a | <pre>object({<br>    access_key = string<br>    secret_key = string<br>    endpoint   = string<br>    bucket     = string<br>  })</pre> | <pre>{<br>  "access_key": "",<br>  "bucket": "",<br>  "endpoint": "",<br>  "secret_key": ""<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mimir_endpoint"></a> [mimir\_endpoint](#output\_mimir\_endpoint) | The Mimir endpoint |
<!-- END_TF_DOCS -->
