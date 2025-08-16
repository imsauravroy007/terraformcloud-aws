# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# The following variable is used to configure the provider's authentication
# token. You don't need to provide a token on the command line to apply changes,
# though: using the remote backend, Terraform will execute remotely in HCP Terraform
# where your token is already securely stored in your workspace!

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
  }

  required_version = ">= 1.0.0"
}
# The following variable is used to configure the provider's authentication


variable "provider_token" {
  type      = string
  sensitive = true
  default = "hmH3K9UrjjqSyw.atlasv1.F3jy0GDRGZK1CQE7y1HxcROMGpJwR2ffg15bcbDBYGePrwrEc3E7w2ly1WuCWFGg0is"
}

provider "aws" {
  token = var.provider_token
  region = "us-west-2"
}

