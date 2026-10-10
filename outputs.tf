output "bedrock_guardrails_blocked_input_messaging" {
  description = "Map of blocked_input_messaging values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.blocked_input_messaging if v.blocked_input_messaging != null && length(v.blocked_input_messaging) > 0 }
}
output "bedrock_guardrails_blocked_outputs_messaging" {
  description = "Map of blocked_outputs_messaging values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.blocked_outputs_messaging if v.blocked_outputs_messaging != null && length(v.blocked_outputs_messaging) > 0 }
}
output "bedrock_guardrails_content_policy_config" {
  description = "Map of content_policy_config values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.content_policy_config if v.content_policy_config != null && length(v.content_policy_config) > 0 }
}
output "bedrock_guardrails_contextual_grounding_policy_config" {
  description = "Map of contextual_grounding_policy_config values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.contextual_grounding_policy_config if v.contextual_grounding_policy_config != null && length(v.contextual_grounding_policy_config) > 0 }
}
output "bedrock_guardrails_created_at" {
  description = "Map of created_at values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "bedrock_guardrails_cross_region_config" {
  description = "Map of cross_region_config values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.cross_region_config if v.cross_region_config != null && length(v.cross_region_config) > 0 }
}
output "bedrock_guardrails_description" {
  description = "Map of description values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrock_guardrails_guardrail_arn" {
  description = "Map of guardrail_arn values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.guardrail_arn if v.guardrail_arn != null && length(v.guardrail_arn) > 0 }
}
output "bedrock_guardrails_guardrail_id" {
  description = "Map of guardrail_id values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.guardrail_id if v.guardrail_id != null && length(v.guardrail_id) > 0 }
}
output "bedrock_guardrails_kms_key_arn" {
  description = "Map of kms_key_arn values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "bedrock_guardrails_name" {
  description = "Map of name values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrock_guardrails_region" {
  description = "Map of region values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrock_guardrails_sensitive_information_policy_config" {
  description = "Map of sensitive_information_policy_config values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.sensitive_information_policy_config if v.sensitive_information_policy_config != null && length(v.sensitive_information_policy_config) > 0 }
}
output "bedrock_guardrails_status" {
  description = "Map of status values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.status if v.status != null && length(v.status) > 0 }
}
output "bedrock_guardrails_tags" {
  description = "Map of tags values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrock_guardrails_tags_all" {
  description = "Map of tags_all values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "bedrock_guardrails_topic_policy_config" {
  description = "Map of topic_policy_config values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.topic_policy_config if v.topic_policy_config != null && length(v.topic_policy_config) > 0 }
}
output "bedrock_guardrails_updated_at" {
  description = "Map of updated_at values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}
output "bedrock_guardrails_version" {
  description = "Map of version values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.version if v.version != null && length(v.version) > 0 }
}
output "bedrock_guardrails_word_policy_config" {
  description = "Map of word_policy_config values across all bedrock_guardrails, keyed the same as var.bedrock_guardrails"
  value       = { for k, v in aws_bedrock_guardrail.bedrock_guardrails : k => v.word_policy_config if v.word_policy_config != null && length(v.word_policy_config) > 0 }
}

