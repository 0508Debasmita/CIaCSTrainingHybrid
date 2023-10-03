provider "azurerm" {
  features {}
  subscription_id="85cd2292-82e3-4c72-a2d7-1ba724a25176"
  client_id="a53107bf-fbf5-40cf-8752-e556704b2c67"
  client_secret="VPc8Q~7Q~lyGaAufy1VwL6hx5M6V~Yd2o_veadzL"
  tenant_id="120709b9-1cde-4a68-944a-f6fb5b566111"
}

resource "azurerm_resource_group" "hybrid" {
  name     = var.resource_group_name
  location = var.location_name
}

resource "azurerm_mysql_server" "hybrid" {
  name                = var.mysql_server_name
  location            = var.location_name
  resource_group_name = var.resource_group_name

  administrator_login          = var.mysql_server_login
  administrator_login_password = var.mysql_server_password

  sku_name   = "GP_Gen5_2"
  storage_mb = 5120
  version    = "5.7"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = true
  infrastructure_encryption_enabled = true
  public_network_access_enabled     = false
  ssl_enforcement_enabled           = false
}

resource "azurerm_mysql_database" "hybrid" {
  name                = "exampledb"
  resource_group_name = var.resource_group_name
  server_name         = var.mysql_server_name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
