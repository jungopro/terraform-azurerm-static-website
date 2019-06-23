variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created"
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created"
}

variable "account_tier" {
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. Changing this forces a new resource to be created"
  default = "Standard"
}

variable "account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS"
  default = "LRS"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource"
  default = {}
}

variable "client_id" {
  description = "client id to use to enable static website"
}

variable "client_secret" {
  description = "client secret to use to enable static website"
}

variable "tenant_id" {
  description = "client tenant id to use to enable static website"
}
