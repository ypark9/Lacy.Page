variable "bucket_name" {
  type = string
}

variable "domain_names" {
  type = list(string)
}

variable "error_page_path" {
  type = string
  default = "/404.html"
}

variable "environment" {
  description = "The deployment environment (blue/green)"
  type        = string
  default     = "blue"
}