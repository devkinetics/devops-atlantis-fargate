provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "actnow-tfstate-default"
    key    = "devops-atlantis-fargate/terraform.tfstate"
    region = "us-east-1"
  }
}