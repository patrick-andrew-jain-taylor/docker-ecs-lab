resource "aws_cloudformation_stack" "dev_environment" {
  name = "dev-environment"
  template_url = "https://dev-day-bucket.s3-ap-southeast-2.amazonaws.com/lab-templates/5_Lab-Env-C9.yaml"
  parameters = {
    AutoHibernateTimeout = 30
    EC2InstanceType = "t2.medium"
  }
}
