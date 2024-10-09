provider "aws" {
  region = "${var.region}"
  default_tags {
    tags = {
      Environment = var.environment
      Repository  = "in2-terraform-module-test"
      Squad       = "infra"
    }
  }
}

provider "aws" {
  alias  = "US"
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = var.environment
      Repository  = "in2-terraform-module-test"
      Squad       = "infra"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "in2-terraform-in2-github-actions-test"
    region = "us-east-1"
  }
}

data "aws_caller_identity" "aws" {}