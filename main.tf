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
  filename      = "${path.module}/modules/lambda/zip/python-lambda-poc.zip"
  handler       = "main.lambda_handler"
  runtime       = "python3.8"
}