# Pet Registry

This module creates a group of generated pet registry records using the Terraform random provider.

## Usage

```hcl
module "dogs" {
  source  = "nedinthecloud/pet-registry/random"
  version = "1.0.0"

  pet_type = "dog"
  quantity = 3
}
```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [random_integer.age](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [random_shuffle.adoption_status](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/shuffle) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pet_type"></a> [pet\_type](#input\_pet\_type) | The type of pet to register, such as dog, cat, mouse, or iguana. | `string` | n/a | yes |
| <a name="input_quantity"></a> [quantity](#input\_quantity) | The number of pets to create. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pets"></a> [pets](#output\_pets) | A list of generated pet registry records. |
<!-- END_TF_DOCS -->