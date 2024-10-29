output "vm_id" {
  description = "The ID of the Virtual Machine."
  value       = azurerm_virtual_machine.vm.id
}

output "vm_public_ip" {
  description = "The Public IP address of the Virtual Machine."
  value       = azurerm_public_ip.vm_pip.ip_address
}
