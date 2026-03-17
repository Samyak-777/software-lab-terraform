variable "message" {
  description = "The message to write to the file"
  type        = string
  default     = "Hello from Terraform"
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = var.message
}

output "file_path" {
  description = "The path of the created file"
  value       = local_file.hello.filename
}