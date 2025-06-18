variable "nic_name" {}
variable "nic_location" {}
variable "resource_group_name" {}
variable "ip_configuration_name" {}
variable "subnet_id" {}
variable "private_ip_address_allocation" {}
variable "public_ip_name" {}
variable "public_ip_location" {}
variable "public_ip_allocation_method" {}
variable "vm_name" {}
variable "vm_location" {}
variable "vm_size" {}
variable "admin_username" {
    sensitive = true
}
variable "admin_password" {
    sensitive = true
}
variable "os_disk_caching" {}
variable "os_disk_storage_account_type" {}
variable "image_publisher" {}
variable "image_offer" {}
variable "image_sku" {}
variable "image_version" {}
variable "disable_password_authentication" {}
variable "nsg_name" {}
variable "nsg_location" {}  

