project_id = "curious-checking-stuff"
region = "asia-south1"

registry = {
  name        = "helm-chart-repository"
  description = "Example registry to check how helm dependencies would work"
  format      = "DOCKER"
}

services_to_enable = [ 
  "artifactregistry" 
]
