# bucket
terraform {
  backend "s3" {
    bucket         = "bucket"
    key            = "sa-project/staging/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
