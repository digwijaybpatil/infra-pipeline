resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.nic_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}

resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  location            = var.public_ip_location
  allocation_method   = var.public_ip_allocation_method
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.vm_location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password = var.admin_password
  disable_password_authentication = var.disable_password_authentication
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

#   admin_ssh_key {
#     username   = var.admin_username
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }
}