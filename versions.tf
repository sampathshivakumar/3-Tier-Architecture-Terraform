terraform {
  required_version = "~>1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default" // optional when using default profile.

}