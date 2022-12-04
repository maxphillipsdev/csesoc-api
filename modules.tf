module "hasura" {
  source = "./hasura"

  app_image      = "${module.ecr.repository_url}/hasura:latest"
  app_port       = 8080
  fargate_cpu    = 256
  fargate_memory = 512
  aws_region     = "ap-southeast-2"
}
