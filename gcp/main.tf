provider "google" {
  project     = "cloud-resume-challenge-483022"
  region      = "europe-west3"
}

terraform { 
  cloud { 
    organization = "crcterraform" 
    workspaces { name = "gcs-alexweisstechde" } 
  } 
}

resource "google_storage_bucket" "static_site" {
  name          = var.bucket_name
  location      = "EUROPE-WEST3"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  # cors {
  #   origin          = ["http://image-store.com"]
  #   method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
  #   response_header = ["*"]
  #   max_age_seconds = 3600
  # }
  # cors {
  #   origin            = ["http://image-store.com"]
  #   method            = ["GET", "HEAD", "PUT", "POST", "DELETE"]
  #   response_header   = ["*"]
  #   max_age_seconds   = 0
  # }
}

resource "google_storage_bucket_iam_binding" "public_access" {
  bucket = google_storage_bucket.static_site.name

  role = "roles/storage.objectViewer"

  members = [
    "allUsers",
  ]
}

