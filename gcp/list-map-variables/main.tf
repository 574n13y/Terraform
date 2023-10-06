provider "google" {
  credentials = "key.json"
  project     = "vivesh"
}

terraform {
    backend  "gcs" {
    bucket = "public-bucket-sidhi"
}
}
resource "google_storage_bucket" "stanley1" {
  name     = "demo-gcp-1"
  location = var.location[0]
}

resource "google_storage_bucket" "stanley12" {
  name          = "demo-gcp-2"
  location      = var.location[1]
}

resource "google_storage_bucket" "stanley13" {
  name     = "demo-gcp-3"
  location = var.location[2]
}

resource "google_storage_bucket" "stanley14" {
  name          = "demo-gcp-4"
  location      = var.location[3]
}
