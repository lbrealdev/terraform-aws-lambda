# ---------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ---------------------------------------------------------------------------------------------------------------------
# CREATE AWS EC2
# ---------------------------------------------------------------------------------------------------------------------

locals {
  tags = {
    Description = "Managed by Terraform"
    Environment = "test"
  }
}

resource "aws_iam_role" "lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "main" {
  count = var.create ? 1 : 0

  filename      = var.filename
  function_name = var.function_name
  role          = aws_iam_role.lambda.arn
  memory_size = 128
  publish = false
  handler       = var.handler
  runtime       = var.runtime

  ephemeral_storage {
    size = 512
  }

  tracing_config {
    mode = "PassThrough"
  }

}
