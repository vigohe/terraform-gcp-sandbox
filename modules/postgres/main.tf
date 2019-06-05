provider "google" {
  project     = "gcp-project-jkst"
  region      = "${var.region}"
}

resource "random_id" "this" {
  byte_length = 4
}

resource "google_sql_database_instance" "db" {
  name             = "postgres-poc"
  database_version = "POSTGRES_9_6"
  region           = "${var.region}"

  settings {
    tier = "db-f1-micro"
  }
}
