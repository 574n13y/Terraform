variable "env" { 
}
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
  count    = var.env == "prod" ? 5 : 0
  name     = "demo-gcp-prod${count.index}"
  location = var.location[0]
}

resource "google_storage_bucket" "stanley12" {
    count = var.env == "dev" ? 0 : 5
  name          = "demo-gcp-dev-${count.index}"
  location      = var.location[1]
}

