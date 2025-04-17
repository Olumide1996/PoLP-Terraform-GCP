/*
 * # turns on apis needed for this project
 */

locals {
  enabled_apis = toset([
    "admin.googleapis.com",
    "artifactregistry.googleapis.com",
    "compute.googleapis.com",
    "iam.googleapis.com",
  ])
}

resource "google_project_service" "this" {
  for_each = local.enabled_apis

  service = each.value
}