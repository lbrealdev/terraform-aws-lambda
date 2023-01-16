# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY EC2 ON AWS
# ---------------------------------------------------------------------------------------------------------------------

provider "aws" {
  region = "eu-central-1"
}

module "lambda" {
  source = "./modules/lambda"

  create        = true
  function_name = "python-lambda-poc"
  handler       = "main.lambda_handler"
  runtime       = "python3.8"

  filename      = "${path.module}/modules/lambda/zip/lambda.zip"
}