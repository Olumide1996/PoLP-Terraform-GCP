/*
 * # grants permissons for PoLP demo
 # IAM (Identity and Access Management)
 */

# this creates service account sample 1 and 2
resource "google_service_account" "sample_1" {
  account_id   = "sample-1"
  display_name = "First Service Account"
}

resource "google_service_account" "sample_2" {
  account_id   = "sample-2"
  display_name = "Second Service Account"
}

# Creation of Granular Roles for SA1
# Allow writing to Artifact Registry
resource "google_project_iam_member" "github_actions_artifactregistry_writer" {
  member  = "serviceAccount:${google_service_account.sample_1.email}"
  role    = "roles/artifactregistry.writer"
  project = var.project_id
}

# Allow writing objects in the artifacts bucket
resource "google_project_iam_member" "github_actions_storage_objectcreator" {
  member  = "serviceAccount:${google_service_account.sample_1.email}"
  role    = "roles/storage.objectCreator"
  project = var.project_id
}

#Creation of generic role for SA 2
# grant editor level permisson to service account sample_2 which is bad
resource "google_project_iam_member" "github_actions_editor" {
  member  = "serviceAccount:${google_service_account.sample_2.email}"
  role    = "roles/editor"
  project = var.project_id
}
