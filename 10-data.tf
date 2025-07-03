data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}

data "aws_iam_role" "vpc_flow_log_role" {
  name = var.flow_log_role_name
}