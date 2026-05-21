
module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  private_subnet_cidrs = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]

  availability_zones = [
    "us-east-1a",
    "us-east-1b"
  ]
}



module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "dev-eks-cluster"
  cluster_version = "1.30"

  cluster_endpoint_public_access = true

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {

    default = {
      instance_types = ["t3.micro"]

      min_size     = 2
      max_size     = 3
      desired_size = 3

      ami_type = "AL2_x86_64"
    }
  }

  enable_cluster_creator_admin_permissions = true
}

module "alb_controller" {

  source = "../../modules/alb-controller"

  cluster_name      = module.eks.cluster_name
  oidc_provider_arn = module.eks.oidc_provider_arn

  vpc_id = module.vpc.vpc_id
  region = "us-east-1"

providers = {
    helm       = helm
    kubernetes = kubernetes
  }

  depends_on = [
    module.eks
  ]
}
