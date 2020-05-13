resource "aws_ecr_repository" "this" {
  name = "ecs-lab-repo"
}

resource "aws_ecr_repository_policy" "this" {
  policy = data.aws_iam_policy_document.ecr_repo.json
  repository = aws_ecr_repository.this.name
}
