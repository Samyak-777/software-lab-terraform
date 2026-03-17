variable "filename" {
  type = string
}

variable "message" {
  type = string
}

resource "local_file" "custom_file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}