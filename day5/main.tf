terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

variable "container_config" {
  type = list(object({
    name = string
    port = number
  }))
  default =[
    { name = "web1", port = 8081 },
    { name = "web2", port = 8082 },
    { name = "web3", port = 8083 }
  ]
}

# Dynamically generate containers using for_each
module "dynamic_nginx" {
  source   = "../day4/modules/nginx_container"
  
  # Convert list to a map where the key is the container name
  for_each = { for c in var.container_config : c.name => c }

  container_name = each.value.name
  container_port = each.value.port
  Image_name     = "nginx:latest"
}

output "container_urls" {
  value =[for c in var.container_config : "http://localhost:${c.port}"]
}