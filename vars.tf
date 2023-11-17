variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "terraform-cluster-vpc" 
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"  
}

variable "private_subnets" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  
}

variable "public_subnets" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]  
}

variable "eks_version" {
  description = "EKS version"
  type        = string
  default     = "18.30.3"  
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "terraform-cluster"  
}

variable "eks_cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.27"  
}

variable "eks_subnets" {
  description = "EKS cluster subnets"
  type        = list(string)
  default     = ["10.0.5.0/24", "10.0.6.0/24"] 
}

variable "deploy_nginx" {
  description = "Set to true to deploy nginx module"
  type        = bool
  default     = true
}
/*
variable "deploy_hpa" {
  description = "Set to true to deploy hpa module"
  default     = true
}*/

variable "enable_autoscaling" {
  description = "Enable autoscaling with HPA"
  type        = bool
  default     = true
}