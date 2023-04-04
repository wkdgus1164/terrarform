module "s3" {
  source = "../s3"
}

data "aws_s3_bucket" "selected" {
  bucket = module.s3.bucket_name
}

output "aws_s3_bucket_name" {
  value = data.aws_s3_bucket.selected.bucket
}

output "aws_s3_bucket_arn" {
  value = data.aws_s3_bucket.selected.arn
}
