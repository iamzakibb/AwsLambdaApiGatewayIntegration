# output "http_method" {
#   for_each = var.methods
#   value =  aws_api_gateway_integration_response.response_method_integration[each.key]
# }

output "api_url" {
  value = "${aws_api_gateway_deployment.deployment.invoke_url}"
}
