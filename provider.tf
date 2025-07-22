terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
  backend "s3" {
    bucket = "linux-ec2-remote-state"
    key    = "amazon-linux-ec2-key"
    region = "us-east-1"
    dynamodb_table = "linux-ec2-locking"
    }
  }
provider "aws" {
  # Configuration options
  region = "us-east-1"
}