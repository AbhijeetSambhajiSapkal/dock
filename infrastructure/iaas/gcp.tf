provider "google" {
    region = "us-central1"
    project = var.gcp_project_id
}

# bucket resource

resource "google_storage_bucket" "docxx_store" {
    name = "docxx-api-store"
    location = "us-central1"
    uniform_bucket_level_access = true
}

# vpc 

resource "google_compute_network" "docxx_network" {
    name = "docxx-network"
    auto_create_subnetworks = false
    routing_mode = "REGIONAL"
}

