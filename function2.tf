# resource "azurerm_function_app_function" "example" {
#   # config_json = jsonencode(
#   #   {
#   #     bindings = [
#   #       {
#   #         authLevel = "FUNCTION"
#   #         direction = "IN"
#   #         name      = "req"
#   #         route     = "http_trigger"
#   #         type      = "httpTrigger"
#   #       },
#   #       {
#   #         direction = "OUT"
#   #         name      = "$return"
#   #         type      = "http"
#   #       },
#   #     ]
#   #     entryPoint        = "http_trigger"
#   #     functionDirectory = "/home/site/wwwroot"
#   #     language          = "python"
#   #     name              = "http_trigger"
#   #     scriptFile        = "function_app.py"
#   #   }
#   # )
#   config_json = file("func_code/notify_app/function.json")
#   file {
#     name    = "function_app.py"
#     content = file("func_code/notify_app/function_app.py")
#   }
#   enabled         = true
#   function_app_id = azurerm_linux_function_app.functionapp.id
#   name            = "http_trigger"
# }
