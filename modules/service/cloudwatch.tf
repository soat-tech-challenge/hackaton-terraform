#tfsec:ignore:aws-cloudwatch-log-group-customer-key
resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/apigateway/Hackaton_ECS_${var.id}_Service_Logs"
  retention_in_days = 30

  tags = {
    Name : "Hackaton ECS ${var.name} Service Log Group"
  }
}
