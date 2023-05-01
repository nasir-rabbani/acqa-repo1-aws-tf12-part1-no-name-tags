# provider "aws" {
#   region = "us-west-2"
#   version = "3.45.0"
# }

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61"
    }
  }
}

data "aws_canonical_user_id" "current" {}
resource "aws_s3_bucket" "noS3BucketSseRules" {
  bucket = "mybucket2"
  acl = "public-read"
  tags = {
    Name        = "nos3BucketSseRules"
    Environment = "Dev"
  }
}
