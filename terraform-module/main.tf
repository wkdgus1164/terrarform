module "s3" {
  source = "./modules/s3"

  bucket_name = "ureca-terraform-bucket"
}
