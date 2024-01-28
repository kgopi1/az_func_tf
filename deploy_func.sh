zip -r notify_app.zip func_code/notify_app

rg="azure-functions-cptest-rg"
funcapp="notify-linux-function-app"
zipfile="notify_app.zip"
# upload the fu
az functionapp deployment source config-zip -g $rg -n $funcapp --src $zipfile
