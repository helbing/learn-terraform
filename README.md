# learn-terraform

This is an example of I learn terraform.

## Requirements

- [AWS](https://aws.amazon.com/), by default you know how to get access_key and secret.
- [Terraform](https://www.terraform.io/)
- [Docker](https://www.docker.com/)
- [Pre-commit](https://pre-commit.com/)
- [Go](https://go.dev/)
- [Terratest](https://terratest.gruntwork.io/)
- [Terraform-docs](https://terraform-docs.io/)

## Usage

Create terraform.tfvars

```terraform
name = "test"
subnet_enabled = true
```

Run commands:

```shell
terraform init
terraform plan
terraform apply
```

Clean

```shell
terraform destroy
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_simple_vpc"></a> [simple\_vpc](#module\_simple\_vpc) | ./modules/simple_vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | (Optional) IPv4 CIDR | `string` | `"10.0.0.0/24"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) Name of VPC | `string` | `""` | no |
| <a name="input_subnet_az"></a> [subnet\_az](#input\_subnet\_az) | (Optional) Availability zone for the subnet | `string` | `"ap-northeast-1a"` | no |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | (Optional) Subnet IPv4 CIDR | `string` | `"10.0.0.0/24"` | no |
| <a name="input_subnet_enabled"></a> [subnet\_enabled](#input\_subnet\_enabled) | Enable subnets | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) VPC tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN |
| <a name="output_name"></a> [name](#output\_name) | VPC name |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |
<!-- END_TF_DOCS -->