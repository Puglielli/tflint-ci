terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }

  }
}

// Comments about resource sqs
resource "aws_sqs_queue" "sqs-test" {
  name                      = "${var.sqs-name}"
  delay_seconds = 90

  tags={Environment = "production"}
}

variable "sqs-name" {
  type = string
  default = "sqs-test"
}


variable "delay_seconds" {
  description = "Queue delay in seconds"
  default = 90
}

locals {
  list  = ["a", "b", "c"]
  value = list.0 
}


module "vpc" {
  count = local.list == [] ? 1 : 0
  source  = "terraform-aws-modules/vpc/aws"

  tags = {
    workspace = terraform.workspace
  }
}

output "sqs-url" {
  value = aws_sqs_queue.sqs-test.url
}