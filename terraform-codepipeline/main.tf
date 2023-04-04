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

module "codestar" {
  source = "./modules/codestar"
}

module "s3" {
  source = "./modules/s3"
}

module "iam" {
  source = "./modules/iam"
}

module "codepipeline" {
  source = "./modules/codepipeline"
}
