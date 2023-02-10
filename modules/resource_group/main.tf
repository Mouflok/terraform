terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            # Root module should specify the maximum provider version
            # The ~> operator is a convenient shorthand for allowing only patch releases within a specific minor release.
        version = "~> 3.42"
        }
    }
}

resource "azurerm_resource_group" "resource_group" {
    name = var.resource_groupe_name
    location = var.location
    tags = var.tags
    lifecycle {
        ignore_changes = [
            tags["Creation_Date"]
        ]
    }
}