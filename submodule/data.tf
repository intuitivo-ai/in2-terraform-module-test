data "aws_iam_policy_document" "alarms-module" {
  statement {
    actions = ["cloudwatch:DeleteAlarms", "cloudwatch:DescribeAlarms", "cloudwatch:ListTagsForResource", "cloudwatch:PutMetricAlarm", "cloudwatch:TagResource"]
    resources = [
      for x in var.regions : "arn:aws:cloudwatch:${x}:${var.account_id}:alarm:*"
    ]
  }
  statement {
    actions = [
      "cloudwatch:PutDashboard",
      "cloudwatch:DeleteDashboards",
      "cloudwatch:TagResource",
    ]
    resources = [
      "arn:aws:cloudwatch::${var.account_id}:dashboard/*",
    ]
  }
  statement {
    actions = [
      "SNS:CreateTopic",
      "SNS:DeleteTopic",
      "SNS:GetSubscriptionAttributes",
      "SNS:GetTopicAttributes",
      "SNS:ListTagsForResource",
      "SNS:SetTopicAttributes",
      "SNS:Subscribe",
      "SNS:TagResource",
      "SNS:UntagResource",
      "SNS:Unsubscribe",
    ]
    resources = flatten([
      for x in var.regions : "arn:aws:sns:${x}:${var.account_id}:${var.environment}*"
    ])
  }
}