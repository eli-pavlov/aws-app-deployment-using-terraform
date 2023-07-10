terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "terra-vprofile-state"
    key = "terraform/backend"
    region = "eu-central-1"
  }
}
