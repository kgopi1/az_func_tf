# consumpation funcation app. 
resource "azurerm_resource_group" "rg" {
  name     = "azure-functions-cptest-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg" {
  name                     = "functionsapptestsa1234"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_service_plan" "plan" {
  name                = "azure-functions-test-service-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "Y1"
  os_type             = "Linux"
}

# resource "azurerm_function_app" "example" {
#   name                       = "test-azure-functions"
#   location                   = azurerm_resource_group.example.location
#   resource_group_name        = azurerm_resource_group.example.name
#   app_service_plan_id        = azurerm_app_service_plan.example.id
#   storage_account_name       = azurerm_storage_account.example.name
#   storage_account_access_key = azurerm_storage_account.example.primary_access_key
# }


# resource "azurerm_linux_function_app" "functionapp" {
#  # name                = "notify-linux-function-app"
#  # resource_group_name = azurerm_resource_group.rg.name
#  # location            = azurerm_resource_group.rg.location

#   #storage_account_name       = azurerm_storage_account.stg.name
#   #storage_account_access_key = azurerm_storage_account.stg.primary_access_key
#   #service_plan_id            = azurerm_service_plan.plan.id

#   #site_config {}
# }
