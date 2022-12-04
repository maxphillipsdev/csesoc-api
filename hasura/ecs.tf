resource "aws_ecs_cluster" "ecs-cluster" {
  name = "hasura-ecs-cluster"
}

resource "aws_ecs_task_definition" "ecs-task-definition" {
  family = "hasura-ecs-task-definition"
  container_definitions = templatefile("./hasura/ecs_template.json.tpl", {
    app_image      = var.app_image
    app_port       = var.app_port
    fargate_cpu    = var.fargate_cpu
    fargate_memory = var.fargate_memory
    aws_region     = var.aws_region
  })
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs-task-execution-role.arn
}

resource "aws_ecs_service" "ecs-service" {
  name            = "hasura-ecs-service"
  cluster         = aws_ecs_cluster.ecs-cluster.id
  task_definition = aws_ecs_task_definition.ecs-task-definition.arn
  desired_count   = 1
  launch_type     = "FARGATE"
}
