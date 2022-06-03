terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.myregion
  profile = "default"

  default_tags {
    tags = local.mandatory_tags
  }
}
