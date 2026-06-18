terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.48.0"
    }
  }

  # remote state storage location 
  # yuvi you have still not created s3 bucket one created enable this s3 till that time comment this 

  # backend "s3" {
  #   bucket         = "remote-state-90s"  yuvi you need to give your bucket name
  #   key            = "remote-locals-demo.tfstate" 
  #   region         = "us-east-1"
  #   encrypt        = true
  #   use_lockfile   = true # Enables native S3 state locking (Terraform 1.10+)
  # }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}