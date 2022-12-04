module "hasura" {
  source = "./hasura"

  app_image      = "${var.docker_registry}/csesoc-api:main"
  app_port       = 8080
  fargate_cpu    = 256
  fargate_memory = 512
  aws_region     = "ap-southeast-2"
}
