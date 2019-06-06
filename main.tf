terraform {
  backend "azurerm" {
    storage_account_name = "tstate32611"
    container_name       = "tstate"
    key                  = "terraform.tfstate"
  }
}

module "postgres" {
  source = "modules/postgres"

  postgres_name = "${var.postgres_name}"
  project       = "${var.project}"
  region        = "${var.region}"
}

module "redis" {
  source     = "modules/redis"
  region     = "${var.region}"
  project    = "${var.project}"
  redis_name = "${var.redis_name}"
}
