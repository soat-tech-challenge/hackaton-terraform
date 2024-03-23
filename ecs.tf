resource "aws_ecs_cluster" "main" {
  name = "Hackaton_ECS_Cluster"

  tags = {
    Name : "Hackaton ECS Cluster"
  }
}
