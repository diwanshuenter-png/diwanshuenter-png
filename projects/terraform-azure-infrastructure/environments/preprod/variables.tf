variable "resource_group_name" {
  description = "Resource group name for the preproduction lab."
  type        = string
  default     = "rg-dj-portfolio-preprod"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "centralindia"
}

variable "storage_account_name" {
  description = "Globally unique 3-24 character lowercase Azure Storage account name."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account names must contain only lowercase letters and numbers and be 3-24 characters long."
  }
}
