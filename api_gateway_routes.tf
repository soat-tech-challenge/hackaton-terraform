resource "aws_apigatewayv2_route" "debug_route" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "GET /debug"

  target = "integrations/${aws_apigatewayv2_integration.debug_integration.id}"
}

resource "aws_apigatewayv2_route" "forward_to_alb_route" {
  api_id    = aws_apigatewayv2_api.main.id
  route_key = "ANY /{proxy+}"

  target = "integrations/${aws_apigatewayv2_integration.proxy_to_alb.id}"
}
