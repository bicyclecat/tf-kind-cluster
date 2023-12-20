
resource "kind_cluster" "this" {
  name = "kind-cluster"
    kubeconfig_path = pathexpand("${path.module}/kind-config")
    kind_config  {
        kind = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"
        node {
            role = "control-plane"
        }
        node {
            role =  "worker"
        }
    }
}