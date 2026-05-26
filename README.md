AWS EKS Infrastructure Automation using Terraform 🚀

This project demonstrates a production-style AWS infrastructure deployment using Terraform, Amazon EKS, Kubernetes, RDS, Jenkins, Prometheus, and Grafana.

The goal of this project was to automate cloud infrastructure provisioning and deploy a scalable full-stack application on Kubernetes.

📌 Tech Stack
AWS
Terraform
Kubernetes / Amazon EKS
Docker
Jenkins
Helm
AWS RDS MySQL
Prometheus & Grafana
IAM & ALB
🏗️ Infrastructure Overview

The infrastructure includes:

VPC with public/private subnets
NAT Gateway
Amazon EKS cluster
Managed node groups
AWS RDS MySQL
AWS Load Balancer Controller
Kubernetes deployments & services
Monitoring stack using Prometheus & Grafana
🚀 Features Implemented

✅ Automated AWS infrastructure provisioning using Terraform modules

✅ Created secure VPC architecture with public/private subnets

✅ Provisioned Amazon EKS cluster with managed node groups

✅ Configured AWS Load Balancer Controller using IRSA

✅ Integrated AWS RDS MySQL within same VPC

✅ Implemented Jenkins CI/CD pipeline for automated deployments

✅ Configured Kubernetes Ingress, Services, Secrets, and ConfigMaps

✅ Enabled Horizontal Pod Autoscaler (HPA)

✅ Set up Prometheus & Grafana monitoring

✅ Implemented rolling deployments and scalable Kubernetes workloads

📈 Key Achievements
Reduced manual infrastructure setup time by approximately 80%
Automated deployment workflow using CI/CD
Enabled autoscaling and production-style Kubernetes deployments
Improved monitoring and observability across workloads
🧠 Challenges Solved

During this project, I worked on troubleshooting:

VPC networking issues
RDS connectivity problems
IAM permission errors
Kubernetes cluster communication
ALB Ingress routing issues
📂 Project Structure
terraform-eks-infra/
│
├── environments/
├── modules/
├── kubernetes/
└── scripts/
⚙️ Deployment Steps
Clone Repository
git clone https://github.com/tusharyadav235/terraform-eks-three-tier-app.git

cd terraform-eks-three-tier-app
Initialize Terraform
cd environments/dev

terraform init
Deploy Infrastructure
terraform apply
Configure kubectl
aws eks update-kubeconfig --region us-east-1 --name dev-eks-cluster
Deploy Kubernetes Resources
cd ../../kubernetes

kubectl apply -f .
📊 Monitoring

Prometheus and Grafana were configured for monitoring:

Pod CPU & memory usage
Node metrics
Cluster health
Container restarts
🔐 Security
IAM Roles for Service Accounts (IRSA)
Security Groups
Private subnet isolation
Kubernetes Secrets
Non-root Docker containers
📌 Future Improvements
ArgoCD GitOps integration
HTTPS using ACM & Route53
Terraform remote backend locking
ELK Stack logging
👨‍💻 Author
Tushar Yadav
GitHub: tusharyadav235
LinkedIn: LinkedIn Profile

⭐ Feel free to fork, use, or contribute to this project.
