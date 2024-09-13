output "repository_arn" {
    value = module.ecr.repository_arn
    description = "ECR repository ARN"
}

output "repository_url" {
    value = module.ecr.repository_url
    description = "ECR repository URL"
}