############################################################
# Amazon EKS Cluster - Project Bedrock
############################################################

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name    = "bedrock-eks"
  cluster_version = "1.30"
  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 2
      min_size     = 1

      instance_types = ["t3.micro"]
      capacity_type  = "SPOT"

      labels = {
        role = "worker"
      }

      tags = {
        Name = "bedrock-eks-nodes"
      }
    }
  }

  tags = {
    Environment = "production"
    Project     = "bedrock"
  }
}
