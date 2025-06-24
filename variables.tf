variable "resource_group_location" {
  type        = string
  default     = "southeastasia"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "smartGroup"
  description = "Name of the resource group."
}

variable "resource_tags" {
  type        = map(string)
  default     = {
    Owner = "smart"
    Env   = "prod"
    App   = "erp"
  }
  description = "Tags to apply to resources that support tagging."
}

variable "vm_name" {
  type        = string
  default     = "smartVM"
  description = "Name of the virtual machine resource in Azure."
}

variable "vm_computer_name" {
  type        = string
  default     = "smartVM"
  description = "Hostname of the virtual machine."
}

variable "vm_admin_username" {
  type        = string
  default     = "azureuser"
  description = "Admin username for the virtual machine."
}

variable "os_disk_name" {
  type        = string
  default     = "myOsDisk"
  description = "Name of the VM's OS disk."
}

variable "backup_vault_name" {
  type        = string
  default     = "vmbackup"
  description = "Name of the Azure Backup Vault."
}

variable "backup_policy_name" {
  type        = string
  default     = "policybackup"
  description = "Name of the backup policy for the VM disk."
}

variable "subscription_id" {
  type        = string
  default     = "a2100714-2904-487f-8309-90540a382dfd"
  description = "Azure subscription ID for the provider configuration."
}