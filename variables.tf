variable "do_token" {
  description = "Your Digital Ocean API Personal Access Token. (required)"
}

variable "k8s_version" {
  description = "The Kubernetes version to use for this cluster. (required)"
  default = "1.25.4-do.0"
}

variable "label" {
  description = "The unique label to assign to this cluster. (required)"
  default = "default-kubernetes-cluster"
}

variable "region" {
  description = "The region where your cluster will be located. (required)"
  default = "lon1"
}

variable "tags" {
  description = "Tags to apply to your cluster for organizational purposes. (optional)"
  type = list(string)
  default = ["testing"]
}

variable "pools" {
  description = "The Node Pool specifications for the Kubernetes cluster. (required)"
  type = list(object({
    name = string
    size = string
    count = number
  }))
  default = [
    {
      name = "default"
      size = "s-2vcpu-2gb"
      count = 3
    },
    {
      name = "default-amd"
      size = "s-2vcpu-2gb-amd"
      count = 3
    }
  ]
}

variable "k8s_clustername" {
  description = "The name of the Kubernetes cluster. (required)"
  default = "altschool-kubernetes-cluster"
}
