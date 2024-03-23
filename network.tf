resource "aws_security_group" "auth_svc_rds_db_sg" {
  name   = "Hackaton RDS Auth Service DB Security Group"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = var.auth_svc_db_port
    to_port     = var.auth_svc_db_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_security_group" "clockin_svc_rds_db_sg" {
  name   = "Hackaton RDS ClockIn Service DB Security Group"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = var.clockin_svc_db_port
    to_port     = var.clockin_svc_db_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "main" {
  name       = "hackaton-rds-public-subnets-subnet-group"
  subnet_ids = aws_subnet.public_subnets[*].id

  tags = {
    Name : "Hackaton RDS Public Subnets Subnet Group"
  }
}

