provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

resource "random_id" "this" {
  byte_length = 4
}

resource "google_sql_database_instance" "this" {
  name             = "${var.postgres_name}-${random_id.this.hex}"
  database_version = "POSTGRES_9_6"
  region           = "${var.region}"

  settings {
    tier = "db-f1-micro"
  }
}

resource "random_string" "db-password" {
  length  = 32
  special = false
}

resource "google_sql_user" "this" {
  name     = "admin"
  instance = "${google_sql_database_instance.this.name}"
  password = "${random_string.db-password.result}"
}
