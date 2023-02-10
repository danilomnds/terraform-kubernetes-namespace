# Module - Namespaces k8s
[![COE](https://img.shields.io/badge/Created%20By-CCoE-blue)]()
[![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Module developed to standardize the creation of namespaces in K8S environments.

## Compatibility matrix

| Module Version | Terraform Version | Kubernetes Provider Version |
|----------------|-------------------| --------------------------- |
| v1.0.0         | v1.3.6            | 2.17.0                      |

## Specifying a version

To avoid that your code get automatically updates for the module is mandatory to set the version using the `source` option. 
By defining the `?ref=***` in the the URL, you can use a specific version of the module.

Note: The `?ref=***` refers a tag on the git module repo.

## Use case

```hcl
module "<clustername>-ns" {  
  source = "git::https://github.com/danilomnds/terraform-kubernetes-namespace?ref=v1.0.0"
  namespaces = {
    namespace1 = {
      name = "<test-one>"
      annotations  = {
        name = "example-annotation"
      }
      labels = {
        mylabel = "label-value"
      }
    }
    namespace2 = {
      name = "test-two"
      annotations  = {
        name = "example-annotation2"
      }
      labels = {
        mylabel = "label-value2"
      }
    }
  }
}
```

## Input Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| namespaces | list of namespaces to be created | `any` | n/a | `Yes` |

## Documentation

Terraform kubernetes_namespace: <br>
[https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace)<br>