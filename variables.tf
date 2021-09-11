variable "okta_org" {
  default = "dev-34932826"
  type    = string
}

variable "okta_api_token" {
  type = string
}

variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

variable "region" {
  type    = string
  default = "us-east4"
}
