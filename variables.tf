########  Global ########

variable "location" {
    type = string
    description = "Azure region where to deploy"
    default = "West Europe"
}

variable "subscription_id" {
    type = string
    description = "Azure subscription where to deploy"
    default = "ba292887-6be9-44fc-bae4-29cb4b0ca6a1" # Subscription ISSC7
}

########  Resource Group  ########

variable "resource_groupe_name" {
  type = string
  description = "Resource Group Name to create"
}

variable "tags" {
  type = map
  description = "Tags to assigned"
}