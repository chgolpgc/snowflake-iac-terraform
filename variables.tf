variable "snowflake_password" {
  type      = string
  sensitive = true
}
variable "snowflake_account" {
  type      = string
  sensitive = true
}
variable "snowflake_organization" {
  type      = string
  sensitive = true
}
variable "snowflake_user" {
  type      = string
  sensitive = true
}
variable "snowflake_role" {
  type      = string
  sensitive = true
  default = "ACCOUNTADMIN"
}