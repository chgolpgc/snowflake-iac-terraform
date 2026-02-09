terraform {
  required_version = ">= 1.3.0"

  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 1.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "fabric_related_rg"
    storage_account_name = "sathesnowflakejournal"
    container_name       = "tfstate"
    key                  = "terraform-snowflake.tfstate"
  }
}

provider "snowflake" {
  account_name      = var.snowflake_account
  organization_name = var.snowflake_organization
  user              = var.snowflake_user
  password          = var.snowflake_password
  role              = var.snowflake_role
}

module "resources" {
  source = "./modules/sf_resources/"
}
