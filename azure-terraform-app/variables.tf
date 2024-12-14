// Create variable for app service plan name
variable "appservice_plan_name" {
  description = "Name of the app service plan"
  type        = string
  default     = "terraform-appservice-plan"
}

// Create variable for location
variable "location" {
  description = "Location of the resource"
  type        = string
  default     = "West US"
}
