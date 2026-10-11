output "organization_preferences_id" {
  description = "Map of id values across all organization_preferences, keyed the same as var.organization_preferences except keys with no id are omitted"
  value       = { for k, v in grafana_organization_preferences.organization_preferences : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_preferences_home_dashboard_uid" {
  description = "Map of home_dashboard_uid values across all organization_preferences, keyed the same as var.organization_preferences except keys with no home_dashboard_uid are omitted"
  value       = { for k, v in grafana_organization_preferences.organization_preferences : k => v.home_dashboard_uid if v.home_dashboard_uid != null && length(v.home_dashboard_uid) > 0 }
}
output "organization_preferences_org_id" {
  description = "Map of org_id values across all organization_preferences, keyed the same as var.organization_preferences except keys with no org_id are omitted"
  value       = { for k, v in grafana_organization_preferences.organization_preferences : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "organization_preferences_theme" {
  description = "Map of theme values across all organization_preferences, keyed the same as var.organization_preferences except keys with no theme are omitted"
  value       = { for k, v in grafana_organization_preferences.organization_preferences : k => v.theme if v.theme != null && length(v.theme) > 0 }
}
output "organization_preferences_timezone" {
  description = "Map of timezone values across all organization_preferences, keyed the same as var.organization_preferences except keys with no timezone are omitted"
  value       = { for k, v in grafana_organization_preferences.organization_preferences : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "organization_preferences_week_start" {
  description = "Map of week_start values across all organization_preferences, keyed the same as var.organization_preferences except keys with no week_start are omitted"
  value       = { for k, v in grafana_organization_preferences.organization_preferences : k => v.week_start if v.week_start != null && length(v.week_start) > 0 }
}

