# AwsLambdaApiGatewayIntegrationConfigures


This Terraform code is defining and configuring an AWS infrastructure for an API Gateway that integrates with an existing Lambda function. Here's a concise breakdown of each block:

##Lambda Function Data Block:

Purpose: Fetch information about an existing Lambda function.
Code: Defines a Terraform data block for the AWS Lambda function.

##API Gateway Configuration:

Purpose: Configures an API Gateway with a REST API, deployment, resource, and method.
Code:
Defines a REST API.
Creates a deployment for the API.
Sets up a resource and method for proxy integration.

##API Gateway Integration:

Purpose: Integrates the API Gateway with the Lambda function using the AWS_PROXY integration type.
Code: Configures the integration between the API Gateway and the Lambda function.

##API Gateway Method Response:

Purpose: Defines the method response for a successful API Gateway request.
Code: Specifies the HTTP method response with a status code of 200 and an empty response body.

##API Gateway Integration Response:

Purpose: Configures the integration response for a successful integration with the Lambda function.
Code: Defines the integration response with an empty response body for the application/json media type.

##Lambda Function Permission:

Purpose: Grants permission for the API Gateway to invoke the Lambda function.
Code: Specifies the Lambda function name, action, and API Gateway as the principal. Also, sets up the necessary source ARN for the permission.
Overall, this Terraform script sets up an API Gateway that acts as a proxy to an existing Lambda function, allowing the Lambda function to be invoked through the API Gateway.
