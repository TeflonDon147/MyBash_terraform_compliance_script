terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
resource "random_pet" "teflon" {
  length    = 1
  prefix    = "MAYA"
  separator = "-"
}

resource "random_integer" "teflon" {
  max = 147
  min = 1
}