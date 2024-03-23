resource "aws_lb" "main" {
  name               = "Hackaton-ALB"
  internal           = true
  load_balancer_type = "application"
  ip_address_type    = "ipv4"

  security_groups = [aws_default_security_group.default.id]
  subnets         = aws_subnet.private_subnets[*].id

  drop_invalid_header_fields = true

  tags = {
    Name : "Hackaton Internal Application Load Balancer"
  }
}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80
  protocol          = "HTTP" #tfsec:ignore:aws-elb-http-not-used

  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      status_code  = "418"
      message_body = "Hackaton - ALB Invalid destination"
    }
  }

  tags = {
    Name : "Hackaton ALB HTTP Listener"
  }
}
