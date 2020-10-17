project = "go-demo"

app "go-demo" {
  labels = {
    "service" = "go-demo",
    "env"     = "dev"
  }

  build {
    use "pack" {
    }
    registry {
      use "aws-ecr" {
        region     = "us-east-1"
        repository = "waypoint-go"
        tag        = "latest"
      }
    }
  }

  deploy {
    use "kubernetes" {
      probe_path = "/"
    }
  }

  release {
    use "kubernetes" {
      load_balancer = true
      port          = 80
    }
  }
}