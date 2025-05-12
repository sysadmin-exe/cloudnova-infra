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

  dynamic "set" {
    for_each = lookup(each.value, "set", [])
    content {
      name  = set.value.name
      value = set.value.value
    }
  }

  depends_on = [
    module.eks,
    kubernetes_namespace.argocd,
  ]
}
