locals{
    common_labels ={
        env = "prd"
    }
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
  count    = 5
  name     = "demo-gcp-prod-${count.index}"
  location = var.location[1]
  labels = local.common_labels
}


