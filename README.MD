## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.vpc_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_metric_filter.ping_deny](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter) | resource |
| [aws_cloudwatch_metric_alarm.ping_deny](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_flow_log.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log) | resource |
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_network_acl.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_acl) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.ec2_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_sns_topic.alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.alarm_email](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_role.vpc_flow_log_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_name"></a> [alarm\_name](#input\_alarm\_name) | Name of the CloudWatch alarm | `string` | `"Group4Alarms-Ping-Deny"` | no |
| <a name="input_ami_architecture"></a> [ami\_architecture](#input\_ami\_architecture) | AMI architecture for EC2 | `string` | `"x86_64"` | no |
| <a name="input_ami_name_filter"></a> [ami\_name\_filter](#input\_ami\_name\_filter) | AMI name filter for Amazon Linux 2023 | `string` | `"al2023-ami-*-x86_64"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to deploy resources | `string` | `"eu-west-3"` | no |
| <a name="input_az"></a> [az](#input\_az) | Availability zone for the subnet | `string` | `"eu-west-3a"` | no |
| <a name="input_ec2_name"></a> [ec2\_name](#input\_ec2\_name) | Name of the EC2 instance | `string` | `"Group4EC2"` | no |
| <a name="input_flow_log_name"></a> [flow\_log\_name](#input\_flow\_log\_name) | Name of the VPC Flow Log | `string` | `"Group4VPCFlowLog"` | no |
| <a name="input_flow_log_policy_name"></a> [flow\_log\_policy\_name](#input\_flow\_log\_policy\_name) | Name of the IAM policy for VPC Flow Logs | `string` | `"VPCFlowLog_Policy"` | no |
| <a name="input_flow_log_role_name"></a> [flow\_log\_role\_name](#input\_flow\_log\_role\_name) | Name of the IAM role for VPC Flow Logs | `string` | `"VPCFlowLog_Role"` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | IAM instance profile for EC2 (for SSM) | `string` | `"esgi_EC2_Role"` | no |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | Name of the Internet Gateway | `string` | `"Group4InternetGateway"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type | `string` | `"t2.micro"` | no |
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | Name of the CloudWatch Log Group for VPC Flow Logs | `string` | `"Group4VpcLogs"` | no |
| <a name="input_metric_filter_name"></a> [metric\_filter\_name](#input\_metric\_filter\_name) | Name of the CloudWatch metric filter | `string` | `"Group4Ping-Deny-Metric"` | no |
| <a name="input_metric_filter_pattern"></a> [metric\_filter\_pattern](#input\_metric\_filter\_pattern) | Pattern for the CloudWatch metric filter | `string` | `"[version, account, eni, source, destination, srcport, destport, protocol=\"1\", packets, bytes, starttime, endtime, action=\"REJECT\", flowlogstatus]"` | no |
| <a name="input_metric_name"></a> [metric\_name](#input\_metric\_name) | Name of the CloudWatch metric | `string` | `"Ping-Deny"` | no |
| <a name="input_metric_namespace"></a> [metric\_namespace](#input\_metric\_namespace) | Namespace for the CloudWatch metric | `string` | `"Group4Ping-Deny-Metric"` | no |
| <a name="input_nacl_name"></a> [nacl\_name](#input\_nacl\_name) | Name of the Network ACL | `string` | `"Group4PublicACL"` | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | CIDR block for the public subnet | `string` | `"10.4.1.0/24"` | no |
| <a name="input_route_table_name"></a> [route\_table\_name](#input\_route\_table\_name) | Name of the route table | `string` | `"Group4PublicRouteTable"` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Name of the security group for EC2 | `string` | `"Group4EC2server_SG"` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | Name of the SNS topic for CloudWatch alarm | `string` | `"Group4Alarms-Ping-Deny"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the public subnet | `string` | `"Group4SubPub"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for the VPC | `string` | `"10.4.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | `"Group4VPC"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_public_ip"></a> [ec2\_public\_ip](#output\_ec2\_public\_ip) | Public IP of the EC2 instance. |
