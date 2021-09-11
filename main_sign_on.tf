resource "okta_policy_password" "it_sign_on" {
  name                          = "it_default"
  status                        = "ACTIVE"
  description                   = "Default SignOn policy for IT Team"
  password_history_count        = 4
  password_min_length           = 8
  password_min_lowercase        = 0
  password_exclude_first_name   = true
  password_min_symbol           = 1
  password_max_lockout_attempts = 3
  password_min_uppercase        = 1
  email_recovery                = "INACTIVE"
  groups_included               = [okta_group.group_name_it.id]
}

resource "okta_policy_rule_password" "sec_policy_rule_default" {
  policy_id       = okta_policy_password.it_sign_on.id
  name            = "IT Rule #1"
  priority        = 1
  status          = "ACTIVE"
  password_change = "ALLOW"
  password_reset  = "ALLOW"
}