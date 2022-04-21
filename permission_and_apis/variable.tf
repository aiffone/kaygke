
variable "project" { }
variable "project_number" { }
variable "project_id" { }
variable "region" {}
variable "iam_roles_cb" {
  description = "Roles that will be added to service account"
  type        = list(string)
  default     = ["roles/iam.serviceAccountUser", "roles/clouddeploy.operator"]
}
variable "apis_to_activate" {
  description = "apis that will be enabled"
  type        = list(string)
  default     = ["iam.googleapis.com",
  "servicenetworking.googleapis.com", 
  "artifactregistry.googleapis.com", 
  "container.googleapis.com", 
  "clouddeploy.googleapis.com", 
  "cloudbuild.googleapis.com", 
  "sourcerepo.googleapis.com", 
  "cloudresourcemanager.googleapis.com", 
  "compute.googleapis.com"]
}