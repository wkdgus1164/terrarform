resource "aws_codestarconnections_connection" "codestar" {
  name          = "ureca-codepipeline-terraform"
  provider_type = "GitHub"
}

output "codestar_arn" {
  value = aws_codestarconnections_connection.codestar.name
}
