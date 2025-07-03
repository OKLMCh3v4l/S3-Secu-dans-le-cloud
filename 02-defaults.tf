locals {
  vpc_name           = "cloudwatch-vpc"
  public_subnet_cidr = "10.0.1.0/24"
  lambda_role_name   = "cloudwatch_lambda_role"
  event_rule_name    = "cloudwatch-vpc-event-rule"
}
