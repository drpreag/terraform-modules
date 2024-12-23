
variable "account_id" {
    type=string
}
variable "dashboard_name" {
    type=string
}

variable "services" {
    type = list(object ({
        entity_name = string
        display_nmae = string
        app_name = string
    }))
}