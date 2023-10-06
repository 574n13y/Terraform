#Creating bucket using GCP provider Terraform backend and remote state.
provider "google" {
  credentials = "key.json"
  project     = "vivesh"
}

terraform {
    backend  "gcs" {
    bucket = "public-bucket-sidhi"
}
}
resource "google_storage_bucket" "sidhi" {
  name     = "public-bucket-sidhi"
  location = "US"
}

resource "google_storage_bucket" "sidhi-auto-expire" {
  name          = "no-public-access-bucket-sidhi"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
