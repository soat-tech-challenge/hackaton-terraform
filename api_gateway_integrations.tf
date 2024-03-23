resource "aws_apigatewayv2_integration" "debug_integration" {
  api_id           = aws_apigatewayv2_api.main.id
  integration_type = "HTTP_PROXY"

  integration_method = "ANY"
  integration_uri    = "https://example.com/"
}


resource "aws_apigatewayv2_vpc_link" "private_subnets" {
  name               = "Hackaton API GW Private Subnets VPC Link"
  subnet_ids         = aws_subnet.private_subnets[*].id
  security_group_ids = [aws_default_security_group.default.id]
}

resource "aws_apigatewayv2_integration" "proxy_to_alb" {
  api_id           = aws_apigatewayv2_api.main.id
  description      = "Will forward requests to the internal Application Load Balancer to access ECS services."
  integration_type = "HTTP_PROXY"
  integration_uri  = aws_lb_listener.main.arn

  integration_method = "ANY"
  connection_type    = "VPC_LINK"
  connection_id      = aws_apigatewayv2_vpc_link.private_subnets.id
}
