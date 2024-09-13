variable "region" {
    type = string
}

variable "registryName" {
    type = string
    description = "Enter the name of the repository"
}

variable "accesskey" {
    type        = string
    description = "Enter the access key for the ECR repository"
}

variable "secretkey" {
    type        = string
    description = "Enter the secret key for the ECR repository"
}

variable "mutability" {
    type        = string
    description = "The tag mutability for the repository (MUTABLE or IMMUTABLE)"
}

variable "encryptionType" {
    type        = string
    description = "The encryption type for the repository (AES256 or KMS)"
}

variable "scanOnPush" {
    type        = bool
    description = "Enable image scanning on push for the repository"
}

variable "countNumber" {
    type        = number
    description = "Enter the number of repositories to create"
}
