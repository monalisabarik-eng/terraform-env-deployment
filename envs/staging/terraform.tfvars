prefix              = "staging"
location            = "eastus"
resource_group_name = "rg-staging"

address_space = ["10.1.0.0/16"]

subnets = {
  app = "10.1.1.0/24"
  db  = "10.1.2.0/24"
}

vm_size             = "Standard_B2ms"
admin_username      = "azureuser"
ssh_public_key_path = "~/.ssh/id_rsa.pub"
