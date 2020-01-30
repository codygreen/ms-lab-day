variable "url" {
  description = "URL of the BIG-IP Applliance"
  type        = string
}

variable "username" {
  description = "Username to authenticate to the BIG-IP Appliance"
  type        = string
  default     = "admin"
}

variable "config_name" {
  description = "unique identifier for AS3 resource"
  type        = string
  default     = "as3_test"
}

variable "password" {
  description = "Password to authenticate to the BIG-IP Appliance"
  type        = string
}

variable "tenant_name" {
  description = "BIG-IP tenant name for multitenancy"
  type        = string
  default     = "Sample_01"
}
