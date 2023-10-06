provider "google" {
  credentials = "key.json"
  project     = "vivesh"
}

terraform {
  backend "gcs" {
    bucket = "public-bucket-sidhi"
  }
}
resource "google_storage_bucket" "stanley1" {
  count    = 15
  name     = "demo-gcp-${count.index}"
  location = var.location[0]
}

resource "google_storage_bucket" "stanley12" {
    count = 5
  name          = "demo-gcp-art-${count.index}"
  location      = var.location[1]
}

resource "google_storage_bucket" "stanley13" {
    count = 5
  name     = "demo-gcp-ops-${count.index}"
  location = var.location[2]
}

resource "google_storage_bucket" "stanley14" {
    count = 5
  name          = "demo-gcp-onenoc-${count.index}"
  location      = var.location[3]
}
