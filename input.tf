variable "tags_name" {
  type    = string
  #default = "My Bucket"
}

variable "Env" {
  type    = string
  #default = "dev"
}

variable "region" {
  type    = string
  #default = "us-east-1"
}

variable "s3_name" {
  type    = string
  #default = "maya"
}

variable "length" {
  type    = number
  #default = 1
}

variable "max" {
  type    = number
  #default = 147
}

variable "min" {
  type    = number
  #default = 1
}

variable "separator" {
  type    = string
  #default = "-"
}