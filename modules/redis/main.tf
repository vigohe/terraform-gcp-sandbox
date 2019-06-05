provider "google" {
  project     = "gcp-project-jkst"
  region      = "${var.region}"
}

resource "google_redis_instance" "this" {
  name           = "memory-cache"
  memory_size_gb = 1
}