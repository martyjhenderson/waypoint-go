project = "go-demo"

app "go-demo" {
  labels = {
    "service" = "go-demo",
    "env"     = "dev"
  }

  build {
    use "pack" {
        builder="gcr.io/buildpacks/builder:v1"
    }
    registry {
      use "docker" {
        image = "harbor.ravegrunt.com/waypointdemos/waypoint-go"
        tag = "latest"
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