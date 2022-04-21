resource "google_artifact_registry_repository" "docker-repo" {
  provider = google-beta
  project  = var.project
  location = var.region
  repository_id = var.repository_id
  description = "docker repository for app image"
  format = "DOCKER"
}