terraform {
  required_version = "1.0.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.48.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

provider "aws" {
  profile = "harish.km@systems-plus.com"
  region  = "ap-south-1"
}

provider "local" {}
