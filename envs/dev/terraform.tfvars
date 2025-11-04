prefix              = "dev"
location            = "eastus"
resource_group_name = "rg-dev"

address_space = ["10.0.0.0/16"]

subnets = {
  app = "10.0.1.0/24"
  db  = "10.0.2.0/24"
}

vm_size            = "Standard_B1s"
admin_username     = "azureuser"
ssh_public_key_path = "~/.ssh/id_rsa.pub"
