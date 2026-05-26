AWS EKS Infrastructure Automation using Terraform 🚀

Production-style AWS infrastructure automation project using Terraform, Amazon EKS, Kubernetes, RDS, ALB, Jenkins, Prometheus, and Grafana.

This project demonstrates end-to-end DevOps practices including Infrastructure as Code (IaC), Kubernetes orchestration, CI/CD automation, cloud networking, monitoring, and scalable deployments on AWS.

📌 Project Overview

This project provisions and deploys a complete cloud-native infrastructure on AWS using Terraform and Kubernetes.

The infrastructure includes:

Amazon EKS Cluster
Managed Node Groups
VPC with Public & Private Subnets
NAT Gateway
IAM Roles & Policies
AWS Load Balancer Controller
RDS MySQL Database
Kubernetes Deployments & Services
Jenkins CI/CD Pipeline
Prometheus & Grafana Monitoring Stack
🏗️ Architecture
Internet
    │
    ▼
Application Load Balancer (ALB)
    │
    ▼
Amazon EKS Cluster
 ├── Frontend Pods
 ├── Backend Pods
 └── HPA Autoscaling

Backend → AWS RDS MySQL

Monitoring:
Prometheus + Grafana

CI/CD:
GitHub → Jenkins → Docker → EKS
⚙️ Tech Stack
Category	Technologies
Cloud	AWS
Infrastructure as Code	Terraform
Containerization	Docker
Orchestration	Kubernetes, Amazon EKS
CI/CD	Jenkins
Monitoring	Prometheus, Grafana
Database	AWS RDS MySQL
Load Balancing	AWS ALB
Security	IAM, Security Groups
OS & Scripting	Linux, Bash
📂 Project Structure
terraform-eks-infra/
│
├── environments/
│   └── dev/
│
├── modules/
│   ├── vpc/
│   ├── eks/
│   ├── rds/
│   └── alb-controller/
│
├── kubernetes/
│   ├── namespace.yaml
│   ├── backend-deployment.yaml
│   ├── frontend-deployment.yaml
│   ├── ingress.yaml
│   └── services/
│
└── scripts/
🚀 Features Implemented
✅ Infrastructure Automation
Automated provisioning using reusable Terraform modules
VPC creation with public/private subnet architecture
NAT Gateway configuration
EKS cluster & managed node groups provisioning
RDS MySQL deployment inside same VPC
✅ Kubernetes Deployment
Frontend and backend application deployment
Kubernetes Services & Ingress
Namespace isolation
ConfigMaps & Secrets
Rolling deployments
Horizontal Pod Autoscaler (HPA)
✅ AWS Load Balancer Controller
Configured using IRSA (IAM Roles for Service Accounts)
Dynamic ALB provisioning through Kubernetes Ingress
✅ CI/CD Pipeline
Jenkins-based deployment pipeline
Docker image build & push automation
Automated Kubernetes deployments
Rolling updates with zero downtime
✅ Monitoring & Observability
Prometheus deployment using Helm
Grafana dashboards
Pod & node monitoring
Resource utilization tracking
📈 Key Achievements
Reduced manual infrastructure provisioning effort by approximately 80%
Achieved scalable Kubernetes deployment architecture
Implemented production-style AWS networking
Enabled rolling deployments and autoscaling
Integrated secure RDS connectivity within same VPC
🧠 Key Learnings

This project helped me gain practical experience in:

AWS Cloud Infrastructure
Terraform Modules
Kubernetes Networking
IAM & Security Groups
EKS Cluster Management
ALB Ingress Routing
RDS Connectivity Troubleshooting
CI/CD Automation
Cloud Monitoring
🔥 Challenges Faced

Some real-world issues solved during the project:

RDS connectivity issues due to VPC mismatch
Kubernetes Ingress & ALB integration
IAM permission debugging
Node group provisioning issues
Terraform dependency management
EKS authentication configuration
📸 Screenshots


🛠️ Deployment Steps
1️⃣ Clone Repository
git clone https://github.com/tusharyadav235/terraform-eks-three-tier-app.git

cd terraform-eks-three-tier-app
2️⃣ Initialize Terraform
cd environments/dev

terraform init
3️⃣ Deploy Infrastructure
terraform apply
4️⃣ Configure kubectl
aws eks update-kubeconfig --region us-east-1 --name dev-eks-cluster
5️⃣ Deploy Kubernetes Resources
cd ../../kubernetes

kubectl apply -f .
6️⃣ Verify Deployment
kubectl get pods -A

kubectl get ingress -A
📊 Monitoring

Access Grafana and Prometheus dashboards after deployment.

Example metrics monitored:

Pod CPU usage
Memory utilization
Node metrics
Pod restarts
Cluster health
🔐 Security Implementations
IAM Roles for Service Accounts (IRSA)
Private subnet isolation
Kubernetes Secrets
Security Groups
Non-root Docker containers
📌 Future Improvements
ArgoCD GitOps integration
HTTPS using ACM & Route53
Terraform remote backend with DynamoDB locking
Kubernetes Network Policies
AWS WAF integration
Centralized logging with ELK Stack
👨‍💻 Author
Tushar Yadav
LinkedIn: LinkedIn Profile
GitHub: GitHub Profile
⭐ If you found this project useful, consider giving it a star on GitHub!
