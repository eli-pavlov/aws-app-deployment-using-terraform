terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = var.BUCKET
    key = "terraform/backend"
    region = var.REGION
  }
}
