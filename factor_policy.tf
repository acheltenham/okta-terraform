resource "okta_policy_mfa" "security_team" {
  name        = "Security Team"
  status      = "ACTIVE"
  description = "Security Team MFA"

  okta_otp = {
    enroll = "OPTIONAL"
  }

  fido_webauthn = {
    enroll = "REQUIRED"
  }

  groups_included = [okta_group.group_name_security.id]
}

resource "okta_policy_rule_mfa" "security_mfa_rule" {
  policy_id = okta_policy_mfa.security_team.id
  name      = "Security Team MFA"
  priority  = 1
  status    = "ACTIVE"
  enroll    = "LOGIN"
}