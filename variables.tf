####################
# Tags
####################
variable "project" {
  description = "Project name for tags and resource naming"
  default = "New"
}

variable "owner" {
  description = "Contact person responsible for the resource"
  default = "William"
}


variable "lambda_function_name" {
  description = "Lambda Function Name"
  default     = "FirstFunction"
}


####################
# API Gateway
####################
variable "region" {
  description = "Region in which to deploy the API"
  default = "us-east-2"
}

variable "name" {
  description = "The name of the REST API"
  default = "ApiOne"
}

variable "function_name" {
  type = string
  default = "FirstFunction"
  description = "Name of the existing lambda function"
}
