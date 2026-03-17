terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

# Provider connects to local Docker Desktop
provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  name  = "nginx_day3"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

output "service_url" {
  value = "http://localhost:8080"
}