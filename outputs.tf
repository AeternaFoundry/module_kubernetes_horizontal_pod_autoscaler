output "horizontal_pod_autoscalers_id" {
  description = "Map of id values across all horizontal_pod_autoscalers, keyed the same as var.horizontal_pod_autoscalers except keys with no id are omitted"
  value       = { for k, v in kubernetes_horizontal_pod_autoscaler.horizontal_pod_autoscalers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "horizontal_pod_autoscalers_metadata" {
  description = "Map of metadata values across all horizontal_pod_autoscalers, keyed the same as var.horizontal_pod_autoscalers except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_horizontal_pod_autoscaler.horizontal_pod_autoscalers : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "horizontal_pod_autoscalers_spec" {
  description = "Map of spec values across all horizontal_pod_autoscalers, keyed the same as var.horizontal_pod_autoscalers except keys with no spec are omitted"
  value       = { for k, v in kubernetes_horizontal_pod_autoscaler.horizontal_pod_autoscalers : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

