resource "okta_policy_mfa" "IT_team" {
  name        = "IT Team"
  status      = "ACTIVE"
  description = "IT Team MFA"

  okta_otp = {
    enroll = "OPTIONAL"
  }

  fido_webauthn = {
    enroll = "REQUIRED"
  }

  groups_included = [okta_group.group_name_it.id]
}

resource "okta_policy_rule_mfa" "it_mfa_rule" {
  policy_id = okta_policy_mfa.IT_team.id
  name      = "IT Team MFA"
  priority  = 1
  status    = "ACTIVE"
  enroll    = "LOGIN"
}