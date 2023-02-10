resource "kubernetes_namespace" "k8s-namespace" {
  for_each = var.namespaces
  metadata {
    name = each.value.name
    annotations = lookup(each.value, "annotations", null)
    labels = lookup(each.value, "labels", null)
  }
}