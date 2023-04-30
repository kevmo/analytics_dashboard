terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "analytics" {
  cidr_block = "10.0.0.0/16"
}

# Create a Budget
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget



resource "aws_budgets_budget" "ec2" {
  name              = "budget-ec2-monthly"
  budget_type       = "COST"
  limit_amount      = "25"
  limit_unit        = "USD"
  time_period_end   = "2023-06-15_00:00"
  time_period_start = "2023-04-30_00:00"
  time_unit         = "ANNUALLY"

#   cost_filter {
#     name = "Service"
#     values = [
#       "Amazon Elastic Compute Cloud - Compute",
#     ]
#   }

#   notification {
#     comparison_operator        = "GREATER_THAN"
#     threshold                  = 80
#     threshold_type             = "PERCENTAGE"
#     notification_type          = "FORECASTED"
#     # subscriber_email_addresses = ["test@example.com"]
#   }
}


resource "aws_s3_bucket" "analytics_dashboard" {
  bucket = "analytics-dashboard-data-lake"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
}