# 1. Create Namespace
resource "kubernetes_namespace" "argocd" {
  metadata {
    name = local.argocd_namespace
  }
}

resource "helm_release" "these" {
  for_each = local.helm_releases

  name             = each.value.name
  repository       = each.value.repository
  chart            = each.value.chart
  version          = each.value.version
  create_namespace = try(each.value.namespace, null) != null ? true : false

  namespace = lookup(each.value, "namespace", local.argocd_namespace)
  values    = lookup(each.value, "values", [])

  depends_on = [
    module.eks,
  ]
}
