<!-- BEGIN_TF_DOCS -->
## Deployment

```sh
terraform init
terraform plan
terraform apply -auto-approve
```

## Teardown

```sh
terraform destroy -auto-approve
```
## Providers

No providers.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | aws default region to create the AWS resources | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block of the production VPC | `string` | `"10.20.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the production VPC | `string` | `"stage"` | no |
## Resources

No resources.
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | VPC private subnets' IDs list |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | VPC public subnets' IDs list |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |
<!-- END_TF_DOCS -->