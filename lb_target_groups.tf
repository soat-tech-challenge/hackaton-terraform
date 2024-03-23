// ECS service will register themselves into these target groups


resource "aws_lb_target_group" "ecs_auth_svc_tg" {
  name        = "Hackaton-ALB-AuthSVC-TG"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  health_check {
    interval = 10
    path     = "/authentication/actuator/health"
  }

  tags = {
    Name : "Hackaton ALB Auth Service Target Group"
  }
}

resource "aws_lb_target_group" "ecs_clockin_svc_tg" {
  name        = "Hackaton-ALB-ClockInSVC-TG"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.main.id

  health_check {
    interval = 10
    path     = "/clock-in/actuator/health"
  }

  tags = {
    Name : "Hackaton ALB ClockIn Service Target Group"
  }
}

