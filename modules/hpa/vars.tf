variable "max_replicas" {
  description = "Maximum number of replicas for the HPA"
  type        = number
  default     = 5  
}

variable "min_replicas" {
  description = "Minimum number of replicas for the HPA"
  type        = number
  default     = 2  
}

variable "target_cpu_utilization_percentage" {
  description = "Target CPU utilization percentage for scaling"
  type        = number
  default     = 50  
}
