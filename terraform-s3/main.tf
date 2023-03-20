terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "ureca-terraform"
}
