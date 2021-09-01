# Enable Factors 
resource "okta_factor" "google_otp" {
  provider_id = "google_otp"

}

resource "okta_factor" "fido" {
  provider_id = "fido_webauthn"

}

resource "okta_factor" "okta_otp" {
  provider_id = "okta_otp"

}

resource "okta_factor" "okta_push" {
  provider_id = "okta_push"

}