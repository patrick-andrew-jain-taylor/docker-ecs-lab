resource "aws_cloudformation_stack" "ecs_cluster" {
  name = "ecs-cluster"
  template_url = "https://dev-day-bucket.s3-ap-southeast-2.amazonaws.com/lab-templates/1_ClusterTemplateV3.template"
  parameters = {
    AsgMaxSize = 2
    ECSAMI = "/aws/service/ecs/optimized-ami/amazon-linux/recommended/image_id"
  }
  capabilities = ["CAPABILITY_IAM"]
}
