variable "nginx_deployment_name" {
  description = "The name of the NGINX deployment"
}

resource "kubernetes_horizontal_pod_autoscaler" "nginx" {
  depends_on = [var.nginx_deployment_name]

  metadata {
    name = "nginx-hpa"
  }

  spec {
    max_replicas                       = var.max_replicas
    min_replicas                       = var.min_replicas
    target_cpu_utilization_percentage = var.target_cpu_utilization_percentage

    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = var.nginx_deployment_name
    }
  }
}
