resource "okta_group" "group_name_it" {
  name        = "IT"
  description = "IT Group"
}

resource "okta_group" "group_name_security_operations" {
  name        = "Security Operations"
  description = "Security Operations Group"
}

resource "okta_group" "group_name_talent" {
  name        = "Talent Operations"
  description = "Talent Operations Group"
}

resource "okta_group" "group_name_legal" {
  name        = "Legal OPs"
  description = "Legal OPs Group"
}