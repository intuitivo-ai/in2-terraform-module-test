resource "aws_iam_policy" "test" {
  name     = "${var.environment}-github-allow-access-to-test-RW"
  path     = "/modules/"
  policy   = data.aws_iam_policy_document.test.json
}
