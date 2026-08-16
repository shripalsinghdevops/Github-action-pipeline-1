rgs = {

  rg1 = {

    name     = "shri1"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    vnet_name           = "vnet1"
    location            = "westus"
    resource_group_name = "shri1"
    address_space       = ["10.0.0.0/16"]

  }
}
subnet = {
  subnet1 = {
    subnet_name          = "frontend_remote"
    resource_group_name  = "shri1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.1.1.0/24"]

  }

}