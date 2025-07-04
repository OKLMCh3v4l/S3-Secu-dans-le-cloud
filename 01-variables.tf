variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-3"
}

variable "log_group_name" {
  description = "Name of the CloudWatch Log Group for VPC Flow Logs"
  type        = string
  default     = "Group3VpcLogs"
}
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "Group3VPC"
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.3.0.0/16"
}
variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
  default     = "Group3InternetGateway"
}
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.3.1.0/24"
}
variable "az" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "eu-west-3a"
}
variable "subnet_name" {
  description = "Name of the public subnet"
  type        = string
  default     = "Group3SubPub"
}
variable "route_table_name" {
  description = "Name of the route table"
  type        = string
  default     = "Group3PublicRouteTable"
}
variable "sg_name" {
  description = "Name of the security group for EC2"
  type        = string
  default     = "Group3EC2server_SG"
}
variable "flow_log_role_name" {
  description = "Name of the IAM role for VPC Flow Logs"
  type        = string
  default     = "VPCFlowLog_Role"
}
variable "flow_log_policy_name" {
  description = "Name of the IAM policy for VPC Flow Logs"
  type        = string
  default     = "VPCFlowLog_Policy"
}
variable "flow_log_name" {
  description = "Name of the VPC Flow Log"
  type        = string
  default     = "Group3VPCFlowLog"
}
variable "nacl_name" {
  description = "Name of the Network ACL"
  type        = string
  default     = "Group3PublicACL"
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
variable "iam_instance_profile" {
  description = "IAM instance profile for EC2 (for SSM)"
  type        = string
  default     = "esgi_EC2_Role"
}
variable "ec2_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "Group3EC2"
}
variable "ami_name_filter" {
  description = "AMI name filter for Amazon Linux 2023"
  type        = string
  default     = "al2023-ami-*-x86_64"
}
variable "ami_architecture" {
  description = "AMI architecture for EC2"
  type        = string
  default     = "x86_64"
}
variable "sns_topic_name" {
  description = "Name of the SNS topic for CloudWatch alarm"
  type        = string
  default     = "Group3Alarms-Ping-Deny"
}
variable "metric_filter_name" {
  description = "Name of the CloudWatch metric filter"
  type        = string
  default     = "Group3Ping-Deny-Metric"
}
variable "metric_filter_pattern" {
  description = "Pattern for the CloudWatch metric filter"
  type        = string
  default     = "[version, account, eni, source, destination, srcport, destport, protocol=\"1\", packets, bytes, starttime, endtime, action=\"REJECT\", flowlogstatus]"
}
variable "metric_name" {
  description = "Name of the CloudWatch metric"
  type        = string
  default     = "Ping-Deny"
}
variable "metric_namespace" {
  description = "Namespace for the CloudWatch metric"
  type        = string
  default     = "Group3Ping-Deny-Metric"
}
variable "alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
  default     = "Group3Alarms-Ping-Deny"
}