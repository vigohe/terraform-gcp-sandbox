# terraform modules

resource:

* https://www.terraform.io/docs/providers/google/r/sql_database_instance.html
* https://www.terraform.io/docs/providers/google/r/redis_instance.html

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| postgres\_name |  | string | n/a | yes |
| project |  | string | n/a | yes |
| redis\_name |  | string | n/a | yes |
| region |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| postgres\_password |  |
| postgres\_user |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->