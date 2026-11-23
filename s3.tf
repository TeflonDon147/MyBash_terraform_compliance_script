resource "aws_s3_bucket" "teflon" {
  bucket = lower("${random_pet.teflon.id}-${random_integer.teflon.result}")

  tags = {
    Name        = var.tags_name
    Environment = "Dev"
  }
}