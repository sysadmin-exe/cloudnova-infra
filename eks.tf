module "eks" {
  source     = "terraform-aws-modules/eks/aws"
  version    = "20.8.5"
  depends_on = [module.vpc]

  cluster_name    = local.cluster_resource_prefix
  cluster_version = "1.31"

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = false
  authentication_mode             = "API_AND_CONFIG_MAP"

  # cluster_security_group_additional_rules = {
  #   for group_id in data.aws_security_groups.extra.ids :
  #   "access_443_from_${group_id}" => {
  #     description              = "Access EKS from group ${group_id}"
  #     protocol                 = "tcp"
  #     from_port                = 443
  #     to_port                  = 443
  #     type                     = "ingress"
  #     source_security_group_id = group_id
  #   }
  # }

  enable_cluster_creator_admin_permissions = true

  access_entries = {
    # access entry with a policy associated for ops team
    kadminops = {
      kubernetes_groups = []
      principal_arn     = module.eks_admins_iam_role.iam_role_arn

      policy_associations = {
        kadmin-namespaces-policy = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
          access_scope = {
            namespaces = ["*"]
            type       = "namespace"
          }
        },
        kadmin-cluster-policy = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
          access_scope = {
            type = "cluster"
          }
        }

      }
    }
  }

  cluster_addons = {
    aws-ebs-csi-driver = {
      most_recent = true
    }

    vpc-cni = {
      most_recent              = true
      service_account_role_arn = module.vpc_cni_irsa.iam_role_arn

      configuration_values = jsonencode({
        env = {
          ENABLE_POD_ENI = "true"
        },
        init = {
          env = {
            DISABLE_TCP_EARLY_DEMUX = "true"
          }
        }
      })
    }
  }

  cluster_enabled_log_types = ["authenticator", "audit", "api"]

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

  eks_managed_node_groups = {
    arm64_nodes = {
      name                     = "${local.cluster_resource_prefix}-nodes"
      iam_role_use_name_prefix = true
      iam_role_name            = "${local.cluster_resource_prefix}-arm64-nodes"
      desired_size             = 3
      min_size                 = 3
      max_size                 = 4

      labels = {
        NodeTypeClass = "arm64"
        CapacityType  = "ondemand"
      }

      ami_type       = local.eks_nodes_ami_type
      instance_types = local.eks_nodes_instance_types
      capacity_type  = "ON_DEMAND"

      attach_vpc_cni_policy = true
      disk_size             = 50

      # Needed by the aws-ebs-csi-driver
      iam_role_additional_policies = {
        AmazonEBSCSIDriverPolicy       = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
        AmazonEKSVPCResourceController = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
      }

      tags = {
        Component = "eks-node"
      }

      tags = {
        Name = local.cluster_resource_prefix
      }
    }
  }
}

module "vpc_cni_irsa" {
  source    = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  role_name = "${local.cluster_resource_prefix}-vpc-cni-irsa"

  attach_vpc_cni_policy = true
  vpc_cni_enable_ipv4   = true

  oidc_providers = {
    main = {
      provider_arn               = module.eks.oidc_provider_arn
      namespace_service_accounts = ["kube-system:aws-node"]
    }
  }

  tags = {
    Name = "${local.cluster_resource_prefix}-vpc-cni-irsa"
  }
}
