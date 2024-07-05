resource "google_project_service" "services_to_enable" {
  for_each            = toset(var.services_to_enable)
  service             = "${each.value}.googleapis.com"
  project             = var.project_id
  disable_on_destroy  = false
}

resource "google_artifact_registry_repository" "my-repo" {
  location      = var.region
  repository_id = var.registry.name
  description   = var.registry.description
  format        = var.registry.format

  depends_on = [ google_project_service.services_to_enable ]
}
