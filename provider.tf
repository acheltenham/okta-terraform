terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 3.10"
    }
  }
}

# Configure the Okta Provider
provider "okta" {
  org_name  = var.okta_org
  base_url  = "okta.com"
  api_token = var.OKTA_API_TOKEN
}


provider "google" {
  project = var.project_id
  region  = var.region
}
