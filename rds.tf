resource "aws_db_parameter_group" "main" {
  name        = "hackaton-psql-pg"
  description = "Hackaton RDS Parameter Group for PostgreSQL"
  family      = "postgres15"

  parameter {
    name  = "log_connections"
    value = "1"
  }

  tags = {
    Name : "Hackaton RDS PostgreSQL Parameter Group"
  }
}

resource "aws_db_instance" "auth_svc_db" {
  identifier = "hackaton-rds-auth-svc-db"
  engine     = "postgres"

  db_name = var.auth_svc_db_name

  allocated_storage = 20
  storage_type      = "gp2"
  engine_version    = "15.4"
  instance_class    = "db.t3.micro"

  username = var.auth_svc_db_username
  password = var.auth_svc_db_password
  port     = var.auth_svc_db_port

  skip_final_snapshot = true
  publicly_accessible = true # For presentation purposes
  deletion_protection = false
  ca_cert_identifier  = "rds-ca-rsa2048-g1"
  apply_immediately   = true

  parameter_group_name = aws_db_parameter_group.main.name
  db_subnet_group_name = aws_db_subnet_group.main.name

  vpc_security_group_ids = [aws_security_group.auth_svc_rds_db_sg.id]

  # monitoring_interval = 15
  # monitoring_role_arn = data.aws_iam_role.lab_role.arn
}

resource "aws_db_instance" "clockin_svc_db" {
  identifier = "hackaton-rds-clockin-svc-db"
  engine     = "postgres"

  db_name = var.clockin_svc_db_name

  allocated_storage = 20
  storage_type      = "gp2"
  engine_version    = "15.4"
  instance_class    = "db.t3.micro"

  username = var.clockin_svc_db_username
  password = var.clockin_svc_db_password
  port     = var.clockin_svc_db_port

  skip_final_snapshot = true
  publicly_accessible = true # For presentation purposes
  deletion_protection = false
  ca_cert_identifier  = "rds-ca-rsa2048-g1"
  apply_immediately   = true

  parameter_group_name = aws_db_parameter_group.main.name
  db_subnet_group_name = aws_db_subnet_group.main.name

  vpc_security_group_ids = [aws_security_group.clockin_svc_rds_db_sg.id]

  # monitoring_interval = 15
  # monitoring_role_arn = data.aws_iam_role.lab_role.arn
}
