# learn-terraform

This is an example of I learn terraform.

## Requirements

- [AWS](https://aws.amazon.com/), by default you know how to get access_key and secret.
- [Terraform](https://www.terraform.io/)
- [Docker](https://www.docker.com/)
- [Pre-commit](https://pre-commit.com/)
- [Go](https://go.dev/)
- [Terratest](https://terratest.gruntwork.io/)

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
