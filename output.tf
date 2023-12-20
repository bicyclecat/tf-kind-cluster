output "cluster_data" {
  value = {
    id           = kind_cluster.this.id
    cluster_name = "kind-${kind_cluster.this.name}"
    kubeconfig   = pathexpand("${path.module}/kind-config")
  }
}