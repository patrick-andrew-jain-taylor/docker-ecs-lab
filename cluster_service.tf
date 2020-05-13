resource "aws_ecs_service" "this" {
  name = "webservice"
  task_definition = aws_ecs_task_definition.this.arn
  launch_type = "EC2"
  cluster = "default"
  desired_count = 2
  health_check_grace_period_seconds = 10

  load_balancer {
    elb_name = "myLoadBalancer"
    container_name = "WebContainer"
    container_port = 80
  }

}
