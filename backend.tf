terraform {
  backend "gcs" {
    bucket = "okta-remote-state"
    prefix = "terraform/okta-dev-34932826"
  }
}