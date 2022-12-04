variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "my-ecr-repository"
}

variable "docker_registry" {
  description = "The docker registry"
  type        = string
  default     = "ghcr.io/maxphillipsdev"
}
