terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
resource "random_pet" "teflon" {
  length    = var.length
  prefix    = var.s3_name
  separator = var.separator
}

resource "random_integer" "teflon" {
  max = var.max
  min = var.min
}