resource "grafana_organization_preferences" "organization_preferences" {
  for_each = var.organization_preferences

  home_dashboard_uid = each.value.home_dashboard_uid
  org_id             = each.value.org_id
  theme              = each.value.theme
  timezone           = each.value.timezone
  week_start         = each.value.week_start
}

