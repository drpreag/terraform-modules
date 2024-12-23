resource "newrelic_one_dashboard" "this" {
    name = var.dashboard_name
    permissions = "public_read_write"
    account_id = var.account_id
}