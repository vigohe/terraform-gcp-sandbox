output "postgres_user" {
  value = "${google_sql_user.this.name}"
}

output "postgres_password" {
  value = "${google_sql_user.this.password}"
}
