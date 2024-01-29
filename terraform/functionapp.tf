resource "azurerm_linux_function_app" "functionapp" {
  #app_settings                                   = {}
  #builtin_logging_enabled                        = false
  #client_certificate_enabled                     = false
  #client_certificate_mode                        = "Required"
  #content_share_force_disabled                   = false
  #custom_domain_verification_id                  = (sensitive value)
  #daily_memory_time_quota                        = 0
  #default_hostname                               = "notify-linux-function-app.azurewebsites.net"
  enabled = true
  #ftp_publish_basic_authentication_enabled       = true
  functions_extension_version = "~4"
  https_only                  = true
  #id                                             = "/subscriptions/7d36b290-05bd-4bc4-a670-89b4e4749eb3/resourceGroups/azure-functions-cptest-rg/providers/Microsoft.Web/sites/notify-linux-function-app"
  #key_vault_reference_identity_id                = "SystemAssigned"
  #kind                                           = "functionapp,linux"
  location                      = "westeurope"
  name                          = "notify-linux-function-app"
  public_network_access_enabled = true
  resource_group_name           = "azure-functions-cptest-rg"
  service_plan_id               = azurerm_service_plan.plan.id
  #site_credential                                = (sensitive value)
  storage_account_access_key = azurerm_storage_account.stg.primary_access_key
  storage_account_name       = azurerm_storage_account.stg.name
  #storage_uses_managed_identity                  = false
  # #tags                                           = {
  #     "hidden-link: /app-insights-resource-id" = "/subscriptions/7d36b290-05bd-4bc4-a670-89b4e4749eb3/resourceGroups/azure-functions-cptest-rg/providers/Microsoft.Insights/components/notify-linux-function-app"
  # }
  webdeploy_publish_basic_authentication_enabled = true

  site_config {
    always_on       = false
    app_scale_limit = 200
    #application_insights_connection_string  = (sensitive value)
    #container_registry_use_managed_identity = false
    #detailed_error_logging_enabled          = false
    #elastic_instance_minimum                = 0
    #ftps_state                              = "FtpsOnly"
    #health_check_eviction_time_in_min       = 0
    #http2_enabled                           = false
    #linux_fx_version = "Python|3.11"
    #load_balancing_mode                     = "LeastRequests"
    #managed_pipeline_mode                   = "Integrated"
    minimum_tls_version = "1.2"
    #pre_warmed_instance_count               = 0
    #remote_debugging_enabled         = false
    #runtime_scale_monitoring_enabled = false
    #scm_minimum_tls_version          = "1.2"
    #scm_type                         = "None"
    scm_use_main_ip_restriction = false
    #use_32_bit_worker                       = false
    #vnet_route_all_enabled                  = false
    #websockets_enabled                      = false
    worker_count = 1

    application_stack {
      python_version = "3.11"
      #use_custom_runtime = false
      #use_dotnet_isolated_runtime = false
    }

    # cors {
    #     allowed_origins     = [
    #         "https://portal.azure.com",
    #     ]
    #     support_credentials = false
    # }
  }
}
