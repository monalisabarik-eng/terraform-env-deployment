prefix              = "prod"
location            = "eastus2"
resource_group_name = "rg-prod"

address_space = ["10.2.0.0/16"]

subnets = {
  app = "10.2.1.0/24"
  db  = "10.2.2.0/24"
}

vm_size             = "Standard_D2s_v3"
admin_username      = "azureadmin"
ssh_public_key_path = "~/.ssh/id_rsa.pub"
