resource "aws_ecs_cluster" "main" {
  name = "SOAT_Tech_Challenge_ECS_Cluster"

  tags = {
    Name : "Hackaton ECS Cluster"
  }
}
