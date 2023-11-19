# about
Provisioning EKS cluster using Terraform with NGINX pods and HPA scaling. Implemented Terraform logical sequence to define specific modules to be applied during run-time.

# run using 
terraform apply -var="deploy_nginx=true" -var="enable_autoscaling=false" 


