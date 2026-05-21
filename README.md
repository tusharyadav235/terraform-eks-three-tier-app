# AWS EKS Three-Tier Application Deployment

## Overview
This project demonstrates deployment of a three-tier application on Amazon EKS using Terraform and Kubernetes.

## Tech Stack
- AWS
- Terraform
- Kubernetes
- Amazon EKS
- Docker
- Spring Boot
- React
- MySQL RDS
- ALB Ingress Controller

## Architecture
User → ALB → Frontend → Backend → RDS

## Features
- Infrastructure provisioning using Terraform
- Kubernetes deployments and services
- AWS Load Balancer Controller integration
- Secure RDS connectivity
- ConfigMaps and Secrets
- Ingress-based routing

## Project Structure

```bash
terraform-eks-infra/
├── environments/
├── modules/
├── kubernetes/
├── backend/
├── frontend/
```

## Deployment
1. Provision infrastructure using Terraform
2. Configure kubectl
3. Deploy Kubernetes manifests
4. Access application via ALB


