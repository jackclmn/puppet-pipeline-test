provider "aws" {
  profile    = "${var.profile}"
  version    = "~> 2.23"
  region     = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "terraform-remote-state-storage-s3-cynerge-infra-team-v1"
    key    = "key/"
    region = "us-east-2"
  }
}