# 1. Create Namespace
resource "kubernetes_namespace" "argocd" {
  metadata {
    name = local.argocd_namespace
  }
}

# 2. Install Argo CD via Helm
resource "helm_release" "argocd" {
  name       = local.argocd_server_helm_chart.name
  namespace  = local.argocd_namespace
  repository = local.argocd_server_helm_chart.repository
  chart      = local.argocd_server_helm_chart.chart
  version    = local.argocd_server_helm_chart.version

  depends_on = [
    kubernetes_namespace.argocd
  ]
}

# 3. Install Argo Rollouts
resource "helm_release" "argo_rollouts" {
  name       = local.argocd_rollouts_helm_chart.name
  namespace  = local.argocd_namespace
  repository = local.argocd_rollouts_helm_chart.repository
  chart      = local.argocd_rollouts_helm_chart.chart
  version    = local.argocd_rollouts_helm_chart.version

  values = [<<EOF
dashboard:
  enabled: true
EOF
  ]
  depends_on = [
    kubernetes_namespace.argocd
  ]
}

# # 4. Install nginx ingress controller
# resource "helm_release" "nginx_ingress" {
#   name       = local.nginx_ingress_helm_chart.name
#   namespace  = local.nginx_ingress_helm_chart.namespace
#   create_namespace = true
#   repository = local.nginx_ingress_helm_chart.repository
#   chart      = local.nginx_ingress_helm_chart.chart
#   version    = local.nginx_ingress_helm_chart.version
# }

# 5. Install Kube prometheus stack
resource "helm_release" "kube_prometheus_stack" {
  name             = local.kube_prometheus_stack_helm_chart.name
  namespace        = local.kube_prometheus_stack_helm_chart.namespace
  create_namespace = true
  repository       = local.kube_prometheus_stack_helm_chart.repository
  chart            = local.kube_prometheus_stack_helm_chart.chart
  version          = local.kube_prometheus_stack_helm_chart.version

  values = [
    yamlencode({
      prometheus = {}
        prometheusSpec = {
          serviceMonitorSelectorNilUsesHelmValues = false 
          serviceMonitorSelector = {
            matchLabels = {
              app = "loki"
            }
          }
        }
    })
  ]
}

# 6. Install Loki
resource "helm_release" "loki" {
  name             = local.loki_helm_chart.name
  namespace        = local.loki_helm_chart.namespace
  create_namespace = true
  repository       = local.loki_helm_chart.repository
  chart            = local.loki_helm_chart.chart
  version          = local.loki_helm_chart.version

  values = [
    yamlencode({
      loki = {
        serviceMonitor = {
          enabled = true
          labels = {
            app = "loki"
          }
        }
      }
    })
  ]

  set {
    name  = "promtail.enabled"
    value = "true"
  }

  set {
    name  = "loki.serviceMonitor.enabled"
    value = "true"
  }

  set {
    name  = "loki.prometheus.enabled"
    value = "true"
  }
  
  depends_on = [
    helm_release.kube_prometheus_stack
  ]
}