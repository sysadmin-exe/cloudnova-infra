#policy w/describeCluster action, for update the k8s context
module "allow_eks_access_iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "~> 5.39"

  name          = "${local.cluster_resource_prefix}-allow-eks-access"
  create_policy = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "eks:DescribeCluster",
        ]
        Effect   = "Allow"
        Resource = module.eks.cluster_arn
      },
    ]
  })

}

module "eks_admins_iam_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 5.39"

  role_name         = "${local.cluster_resource_prefix}-admin"
  create_role       = true
  role_requires_mfa = false

  #attach the iam policy create previously
  custom_role_policy_arns = [module.allow_eks_access_iam_policy.arn]

  #enabling other iam users to assume the role
  trusted_role_arns = [
    "arn:aws:iam::${data.aws_caller_identity.current.id}:root"
  ]

  tags = {
    Name = "${local.cluster_resource_prefix}-admin"
  }
}
