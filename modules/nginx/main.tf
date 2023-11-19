resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx-deployment"
  }

  spec {
    replicas = var.nginx_replicas

    selector {
      match_labels = {
        app = "nginx"
      }
    }


      template {
        metadata {
          labels = {
            app = "nginx"
          }
        }

        spec {
          container {
            image = var.nginx_image
            name  = "nginx"
          port {
            container_port = 80
          }
          resources {
              limits = {
                cpu    = var.nginx_cpu_limit
                memory = var.nginx_memory_limit
              }
              requests = {
                cpu    = var.nginx_cpu_request
                memory = var.nginx_memory_request
              }
            }
          }
        }
      }

    
  }
}

output "nginx_deployment_name" {
  value = kubernetes_deployment.nginx.metadata[0].name
}
