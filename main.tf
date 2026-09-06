terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
}
provider "aws" {
  region = "ap-south-1"
  profile = "default"

}
resource "aws_s3_bucket" "my-terraform-tfstate-bucket86580" {
  bucket = "my-terraform-tfstate-bucket86580" 
     tags = {
    Name        = "my-terraform-tfstate-bucket-7008537179"
    Environment = "Prod"
     }
  
}
