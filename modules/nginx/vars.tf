variable "nginx_replicas" {
  description = "Number of replicas for the Nginx deployment"
  type        = number
  default     = 3
}

variable "nginx_image" {
  description = "Docker image for the Nginx container"
  type        = string
  default     = "nginx:latest"
}

variable "nginx_cpu_limit" {
  description = "CPU limit for the Nginx container"
  type        = string
  default     = "200m"
}

variable "nginx_memory_limit" {
  description = "Memory limit for the Nginx container"
  type        = string
  default     = "512Mi"
}

variable "nginx_cpu_request" {
  description = "CPU request for the Nginx container"
  type        = string
  default     = "100m"
}

variable "nginx_memory_request" {
  description = "Memory request for the Nginx container"
  type        = string
  default     = "256Mi"
}
