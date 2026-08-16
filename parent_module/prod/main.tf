module "resource_group" {
  source = "../../child_modules/azurerm_resource_group"
  rgs    = var.rgs

}

module "virtual_network" {
  source     = "../../child_modules/azurerm_virtual_network"
  depends_on = [module.resource_group]
  vnet       = var.vnet
}
module "subnetwork" {
  source     = "../../child_modules/azurerm_subnetwork"
  depends_on = [module.virtual_network]
  subnet     = var.subnet

}

