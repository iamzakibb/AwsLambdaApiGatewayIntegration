#Calling The existing lambda function
data "aws_lambda_function" "existing" {
  function_name = var.function_name
}

#Data block for retrieving the Account ID
data "aws_caller_identity" "current" {}


provider "aws" {
  region = "us-east-2"  # Replace with your desired region
  
}

####################
# API
####################
module "api" {
  name       = var.name
  source     = "./modules/api"
  method     = "ANY"
  lambda     = data.aws_lambda_function.existing.function_name
  lambda_arn = data.aws_lambda_function.existing.invoke_arn
  region     = "${var.region}"
  account_id = data.aws_caller_identity.current.account_id
  # stage_name = "${terraform.env}"
}

resource "aws_iam_role" "lambda_role" {
  name = "${var.project}-${var.lambda_function_name}-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

 