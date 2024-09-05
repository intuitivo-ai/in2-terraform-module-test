resource "aws_iam_policy" "alarms-module" {
  name   = "github-allow-access-to-in2-terraform-module-test-RW"
  policy = data.aws_iam_policy_document.alarms-module.json
}
