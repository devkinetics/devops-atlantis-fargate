terraform {
 backend "s3" {
   key   = "devops-atlantis-fargate/terraform.tfstate"
   region = "us-east-1"
   bucket = "actnow-tfstate-default"
 }
}