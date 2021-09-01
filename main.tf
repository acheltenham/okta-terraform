resource "okta_group" "group_name_security" {
  name        = "Security"
  description = "Security Group"
}

resource "okta_group" "group_name_operations" {
  name        = "Operations"
  description = "Operations Group"
}

resource "okta_group" "group_name_talent" {
  name        = "Talent"
  description = "Talent Group"
}

resource "okta_group" "group_name_legal" {
  name        = "Legal"
  description = "Legal Group"
}