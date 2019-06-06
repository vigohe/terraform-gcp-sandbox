output "postgres_user" {
  value = "${google_sql_user.this.name}"
}

output "postgres_password" {
  value = "${google_sql_user.this.password}"
}

output "postgres_instance_connection" {
  value = "${var.project}:${var.region}:${google_sql_database_instance.this.name}"
}

output "postgres_instance_name" {
  value = "${google_sql_database_instance.this.name}"
}
