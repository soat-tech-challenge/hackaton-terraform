resource "aws_lb_listener_rule" "auth_svc_rule" {
  listener_arn = aws_lb_listener.main.arn
  priority     = 10

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_auth_svc_tg.arn
  }

  condition {
    path_pattern {
      values = ["/authentication/*"]
    }
  }

  tags = {
    Name : "Hackaton ALB Auth Service Listener Rule"
  }
}

resource "aws_lb_listener_rule" "clockin_svc_rule" {
  listener_arn = aws_lb_listener.main.arn
  priority     = 20

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_clockin_svc_tg.arn
  }

  condition {
    path_pattern {
      values = ["/clock-in/*"]
    }
  }

  tags = {
    Name : "Hackaton ALB ClockIn Service Listener Rule"
  }
}

