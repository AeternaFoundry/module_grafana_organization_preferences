variable "organization_preferences" {
  description = <<EOT
Map of organization_preferences, attributes below
Optional:
    - home_dashboard_uid
    - org_id
    - theme
    - timezone
    - week_start
EOT

  type = map(object({
    home_dashboard_uid = optional(string)
    org_id             = optional(string)
    theme              = optional(string)
    timezone           = optional(string)
    week_start         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.organization_preferences : (
        v.week_start == null || (contains(["sunday", "monday", "saturday", ""], v.week_start))
      )
    ])
    error_message = "must be one of: \"sunday\", \"monday\", \"saturday\", \"\""
  }
}

