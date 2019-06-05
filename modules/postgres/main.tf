provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

resource "random_id" "this" {
  byte_length = 4
}

resource "google_sql_database_instance" "this" {
  name             = "${var.postgres_name}"
  database_version = "POSTGRES_9_6"
  region           = "${var.region}"

  settings {
    tier = "db-f1-micro"
  }
}
