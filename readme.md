# AWS Terraform Project

## What it builds
- VPC (3 AZs) with public + private subnets, NAT gateways
- ECS Fargate service behind ALB + autoscaling
- RDS PostgreSQL (Multi-AZ option)
- S3 bucket (static site / artifacts) with lifecycle to Glacier/IA
- CloudFront distribution + ACM integration (cert in us-east-1)
- Lambda example with scheduled EventBridge rule
- SNS topic + SQS queue (fanout + DLQ)
- CloudWatch alarms & dashboard
- KMS CMK for encryption
- WAFv2 Web ACL
- IAM roles for services
- Remote Terraform state backend (S3 + DynamoDB locking)
- GitHub Actions CI (plan + apply)

## Quickstart
1. Configure AWS CLI credentials: `aws configure` or use environment vars.
2. Create backend S3 bucket + DynamoDB table or run `scripts/bootstrap-backend.sh`.
3. Fill `envs/staging/terraform.tfvars` (copy from example).
4. `cd envs/staging`
5. `terraform init`
6. `terraform plan -var-file=terraform.tfvars`
7. Review plan and `terraform apply -var-file=terraform.tfvars`

