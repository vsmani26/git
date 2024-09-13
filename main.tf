#create repository
module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "2.2.1"

  repository_name = var.registryName
  repository_image_tag_mutability = var.mutability
  repository_encryption_type = var.encryptionType
  repository_image_scan_on_push = var.scanOnPush
  create_lifecycle_policy = true

  #lifecycle policy
  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last 30 images",
        selection = {
          tagStatus     = "tagged",
          tagPrefixList = ["v"],
          countType     = "imageCountMoreThan",
          countNumber   = var.countNumber
        },
        action = {
          type = "expire"
        }
      }
    ]
  })

  tags = {
    Terraform   = "true"
    Environment = "production"
  }
}

