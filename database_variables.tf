variable "auth_svc_db_username" {
  description = "Auth Service RDS Database instance master username"
  type        = string
  default     = "auth"
}

variable "auth_svc_db_password" {
  description = "Auth Service RDS Database instance master password"
  type        = string
  sensitive   = true
  default     = "Secluding9.Twerp.Flagstick"
}

variable "auth_svc_db_name" {
  description = "Auth Service RDS Database instance name"
  type        = string
  default     = "auth_db"
}

variable "auth_svc_db_port" {
  description = "Auth Service RDS Database instance port"
  type        = number
  default     = 5432
}

// ---

variable "clockin_svc_db_username" {
  description = "ClockIn Service RDS Database instance master username"
  type        = string
  default     = "clockin"
}

variable "clockin_svc_db_password" {
  description = "ClockIn Service RDS Database instance master password"
  type        = string
  sensitive   = true
  default     = "Secluding9.Twerp.Flagstick"
}

variable "clockin_svc_db_name" {
  description = "ClockIn Service RDS Database instance name"
  type        = string
  default     = "clockin_db"
}

variable "clockin_svc_db_port" {
  description = "ClockIn Service RDS Database instance port"
  type        = number
  default     = 5432
}

// ---
