resource "aws_ecs_task_definition" "this" {
  container_definitions = file("container.json")
  family = "simplewebtask"
  requires_compatibilities = ["EC2"]
}
