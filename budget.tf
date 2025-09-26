resource "aws_budgets_budget" "monthly_budget" {
  name              = "MonthlyBudget"
  budget_type       = "COST"
  limit_amount      = "10"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"

  cost_filters = {
    Service = "AmazonEC2"
  }

  notification {
    comparison_operator = "GREATER_THAN"
    threshold           = 80
    threshold_type      = "PERCENTAGE"
    notification_type   = "FORECASTED"
    subscriber_email_addresses = ["example@email.com"]
  }
}
