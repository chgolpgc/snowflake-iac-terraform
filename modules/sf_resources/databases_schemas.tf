resource "snowflake_database" "tf_db" {
  name         = "TF_DEMO_DB"
  is_transient = false
}

resource "snowflake_schema" "tf_schema" {
  name     = "TF_SCHEMA"
  database = snowflake_database.tf_db.name
}
