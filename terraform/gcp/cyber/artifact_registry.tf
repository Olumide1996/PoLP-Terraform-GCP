/*
 * # Artifact Registry repository with cleanup policy
 */

# this creates a registry to store docker images
resource "google_artifact_registry_repository" "this" {
  repository_id          = "cyber-lab"
  format                 = "DOCKER"
  location               = var.region
  cleanup_policy_dry_run = false

  # this adds a cleanup policy to delete any image older than 30 days
  cleanup_policies {
    id     = "cyber-lab-cleanup-policy"
    action = "DELETE"

    condition {
      tag_state  = "ANY"
      older_than = "2592000s"
    }
  }
}
