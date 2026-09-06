terraform {
    backend "s3" {
        bucket = "my-terraform-tfstate-bucket8658"
        key    = "rds-with-secretmanager/terraform.tfstate"
        region = "ap-south-1"
        
      
    }
}
