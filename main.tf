terraform {
  backend "azurerm" {
    storage_account_name  = "tstate32611"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

module "postgres" {
  source = "modules/postgres"

  region = "${var.region}"
}

module "redis" {
  source = "modules/redis"
  region = "${var.region}"
}
