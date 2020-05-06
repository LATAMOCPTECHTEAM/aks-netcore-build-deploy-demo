resource "azurerm_kubernetes_cluster" "aks_app" {
  name                = "${var.resource_name_prefix}-aks-app-${var.tag_env}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.resource_name_prefix}-aks-app"

  default_node_pool {
    name                = "default"
    node_count          = 2
    vm_size             = "Standard_F4s_v2"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = true
    min_count           = 2
    max_count           = 4
    max_pods            = 100
  }

  service_principal {
    client_id     = var.service_principal_client_id
    client_secret = var.service_principal_client_secret
  }

  addon_profile {
    kube_dashboard {
      enabled = true
    }
    
  }

  network_profile {
    network_plugin = "azure"
  }

  tags = {
    environment = var.tag_env
  }
}