resource "google_cloudbuild_trigger" "cicd-trigger-main" {
    project = var.project
    name = var.trigger_name
  trigger_template {
    branch_name = "main"
    repo_name   = google_sourcerepo_repository.cicd-source-repo.name
    project_id = var.project
  }

  substitutions = {
    _FOO = "bar"
    _BAZ = "qux"
  }

  filename = "cloudbuild.yaml"
}