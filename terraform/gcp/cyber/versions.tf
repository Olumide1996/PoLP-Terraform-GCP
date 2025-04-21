#This instructs terraform that we are working with google cloud platform
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0.0"
    }
  }
      
  required_version = ">= 1.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

