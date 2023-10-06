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
  for_each = toset(["1","2","3","4","5","6"])
  name     = "demo-gcp-prod-${each.key}"
  location = var.location[0]
}
resource "google_storage_bucket" "stanley11" {
  count = 6
  name     = "demo-gcp-dev-${count.index}"
  location = var.location[1]
}

