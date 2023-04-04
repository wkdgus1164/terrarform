resource "aws_s3_bucket" "this" {
  bucket = "ureca-codepipeline-terraform-s3"
}

resource "aws_s3_bucket_acl" "codepipeline_bucket_acl" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}
