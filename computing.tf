
locals {
  auth_svc_container_definition = templatefile("./container_definitions/auth.json", {
    id          = "auth"
    db_username = var.auth_svc_db_username
    db_password = var.auth_svc_db_password
    db_name     = var.auth_svc_db_name
    db_host     = aws_db_instance.auth_svc_db.endpoint

    jwt_private_key = var.jwt_private_key

    aws_region = var.aws_region
  })
  clockin_svc_container_definition = templatefile("./container_definitions/clockin.json", {
    id = "clockin"

    db_username = var.clockin_svc_db_username
    db_password = var.clockin_svc_db_password
    db_name     = var.clockin_svc_db_name
    db_host     = aws_db_instance.clockin_svc_db.endpoint

    jwt_public_key = var.jwt_public_key

    aws_region        = var.aws_region
    aws_access_key    = var.aws_access_key
    aws_secret_key    = var.aws_secret_key
    aws_session_token = var.aws_session_token

    aws_sqs_endpoint = "https://sqs.us-east-1.amazonaws.com/211125425149/clockIn.fifo"

    mail_host     = "sandbox.smtp.mailtrap.io"
    mail_port     = "2525"
    mail_username = "0d39cae769c5c7"
    mail_password = var.clockin_mail_password
  })
}

module "auth_service" {
  source = "./modules/service"
  id     = "auth"
  name   = "Auth"

  task_role_arn         = data.aws_iam_role.lab_role.arn
  execution_role_arn    = data.aws_iam_role.lab_role.arn
  container_definitions = local.auth_svc_container_definition
  ecs_cluster_id        = aws_ecs_cluster.main.id

  subnet_ids          = aws_subnet.public_subnets[*].id
  security_groups_ids = [aws_vpc.main.default_security_group_id]

  lb_container_port   = 8001
  lb_target_group_arn = aws_lb_target_group.ecs_auth_svc_tg.arn
}

module "clockin_service" {
  source = "./modules/service"
  id     = "clockin"
  name   = "ClockIn"

  task_role_arn         = data.aws_iam_role.lab_role.arn
  execution_role_arn    = data.aws_iam_role.lab_role.arn
  container_definitions = local.clockin_svc_container_definition
  ecs_cluster_id        = aws_ecs_cluster.main.id

  subnet_ids          = aws_subnet.public_subnets[*].id
  security_groups_ids = [aws_vpc.main.default_security_group_id]

  lb_container_port   = 8004
  lb_target_group_arn = aws_lb_target_group.ecs_clockin_svc_tg.arn
}
