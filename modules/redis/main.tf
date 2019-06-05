provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

resource "google_redis_instance" "this" {
  name           = "memory-cache"
  memory_size_gb = 1
}
