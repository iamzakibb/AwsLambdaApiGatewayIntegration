variable "name" {
  description = "The name of the REST API"
  default = "ApiOne"
}

variable "stage_name" {
  description = "The stage name for the API deployment (production/staging/etc..)"
  default = "dev"
}

variable "method" {
  description = "The HTTP method"
  default     = "GET"
}

variable "lambda" {
  description = "The lambda name to invoke"
   default = "FirstFunction"
}

variable "lambda_arn" {
  description = "The lambda arn to invoke"
  default = "arn:aws:lambda:us-east-2:102711293377:function:FirstFunction"
}

variable "region" {
  description = "The AWS region, e.g., eu-west-1"
  default = "us-east-2"
}


variable "account_id" {
  description = "The AWS account ID"
  default ="102711293377"
}

variable "function_name" {
  default = "FirstFunction"
  
}

# variable "methods" {
#   type = map(object({
#     lambda     = string
#     lambda_arn = string
#   }))
#   default = {
#     method1 = {
#       lambda     = "ANY"
#       lambda_arn = "arn:aws:lambda:us-east-2:102711293377:function:FirstFunction"
#     }
#     method2 = {
#       lambda     = "POST"
#       lambda_arn = "arn:aws:lambda:us-east-2:102711293377:function:FirstFunction"
#     }
#     # Add more methods as needed
#   }
# }
