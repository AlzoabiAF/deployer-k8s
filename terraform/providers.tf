terraform {
  required_version = ">= 1.0"

  required_providers {
    freeipa = {
      version = "5.1.0"
      source  = "rework-space-com/freeipa"
    }
  }
}

provider "freeipa" {
  host     = var.freeipa_host
  username = var.freeipa_username
  password = var.freeipa_password
}
