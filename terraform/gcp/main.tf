terraform {
  required_version = ">= 1.9.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_storage_bucket" "application" {
  name = "${var.project_id}-${var.project_name}-${var.environment}"
  location = var.location
  uniform_bucket_level_access = true

  labels = {
    project = var.project_name
    environment = var.environment
    managed_by = "terraform"
  }
}
