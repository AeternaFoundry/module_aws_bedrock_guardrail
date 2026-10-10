variable "bedrock_guardrails" {
  description = <<EOT
Map of bedrock_guardrails, attributes below
Required:
    - blocked_input_messaging
    - blocked_outputs_messaging
    - name
Optional:
    - description
    - kms_key_arn
    - region
    - tags
    - content_policy_config (block):
        - filters_config (optional, block):
            - input_action (optional)
            - input_enabled (optional)
            - input_modalities (optional)
            - input_strength (required)
            - output_action (optional)
            - output_enabled (optional)
            - output_modalities (optional)
            - output_strength (required)
            - type (required)
        - tier_config (optional, block):
            - tier_name (optional)
    - contextual_grounding_policy_config (block):
        - filters_config (optional, block):
            - threshold (required)
            - type (required)
    - cross_region_config (block):
        - guardrail_profile_identifier (required)
    - sensitive_information_policy_config (block):
        - pii_entities_config (optional, block):
            - action (required)
            - input_action (optional)
            - input_enabled (optional)
            - output_action (optional)
            - output_enabled (optional)
            - type (required)
        - regexes_config (optional, block):
            - action (required)
            - description (optional)
            - input_action (optional)
            - input_enabled (optional)
            - name (required)
            - output_action (optional)
            - output_enabled (optional)
            - pattern (required)
    - topic_policy_config (block):
        - tier_config (optional, block):
            - tier_name (optional)
        - topics_config (optional, block):
            - definition (required)
            - examples (optional)
            - name (required)
            - type (required)
    - word_policy_config (block):
        - managed_word_lists_config (optional, block):
            - input_action (optional)
            - input_enabled (optional)
            - output_action (optional)
            - output_enabled (optional)
            - type (required)
        - words_config (optional, block):
            - input_action (optional)
            - input_enabled (optional)
            - output_action (optional)
            - output_enabled (optional)
            - text (required)
EOT

  type = map(object({
    blocked_input_messaging   = string
    blocked_outputs_messaging = string
    name                      = string
    description               = optional(string)
    kms_key_arn               = optional(string)
    region                    = optional(string)
    tags                      = optional(map(string))
    content_policy_config = optional(list(object({
      filters_config = optional(list(object({
        input_action      = optional(string)
        input_enabled     = optional(bool)
        input_modalities  = optional(set(string))
        input_strength    = string
        output_action     = optional(string)
        output_enabled    = optional(bool)
        output_modalities = optional(set(string))
        output_strength   = string
        type              = string
      })))
      tier_config = optional(list(object({
        tier_name = optional(string)
      })))
    })))
    contextual_grounding_policy_config = optional(list(object({
      filters_config = optional(list(object({
        threshold = number
        type      = string
      })))
    })))
    cross_region_config = optional(list(object({
      guardrail_profile_identifier = string
    })))
    sensitive_information_policy_config = optional(list(object({
      pii_entities_config = optional(list(object({
        action         = string
        input_action   = optional(string)
        input_enabled  = optional(bool)
        output_action  = optional(string)
        output_enabled = optional(bool)
        type           = string
      })))
      regexes_config = optional(list(object({
        action         = string
        description    = optional(string)
        input_action   = optional(string)
        input_enabled  = optional(bool)
        name           = string
        output_action  = optional(string)
        output_enabled = optional(bool)
        pattern        = string
      })))
    })))
    topic_policy_config = optional(list(object({
      tier_config = optional(list(object({
        tier_name = optional(string)
      })))
      topics_config = optional(list(object({
        definition = string
        examples   = optional(list(string))
        name       = string
        type       = string
      })))
    })))
    word_policy_config = optional(list(object({
      managed_word_lists_config = optional(list(object({
        input_action   = optional(string)
        input_enabled  = optional(bool)
        output_action  = optional(string)
        output_enabled = optional(bool)
        type           = string
      })))
      words_config = optional(list(object({
        input_action   = optional(string)
        input_enabled  = optional(bool)
        output_action  = optional(string)
        output_enabled = optional(bool)
        text           = string
      })))
    })))
  }))
}

