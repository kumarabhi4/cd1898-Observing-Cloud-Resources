terraform {
   backend "s3" {
     bucket = "udacity-sre1-terraform-bucket"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-2"

   default_tags {
     tags = local.tags
   }
 }