//a Kubernetes cluster

# instance kubectl linkto the cluster run the kubernetes

resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
    version = var.k8s_version
    name = var.k8s_clustername
    # label = var.label
    region = var.region
    tags = var.tags

    dynamic "node_pool" {
        for_each = var.pools
        content {
            name = node_pool.value["name"]
            node_count  = node_pool.value["count"]
            size = node_pool.value["size"]
        }
    }
}

//Export this cluster's attributes

output "k8s_name" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.name
}
  

output "kubeconfig" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.kube_config.0.raw_config
  sensitive = true
}

output "api_endpoints" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.endpoint
}

output "status" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.status
}

output "id" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.id
}

output "pool" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.node_pool
}
