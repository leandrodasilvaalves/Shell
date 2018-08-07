cls
cd "C:\Users\leandro.alves\Desktop\Shell\connection-string\"

$appSetting = ".\appsettings.json"
$appDevelopSetting = ".\appsettings.develop.json"

$regexConApp = '("ConnectionString":\s"connectionstring",)'
$regexConDev = '"ConnectionString":\s"\w+:\/\/\w+:\d+",'
$replaceCon = (Get-Content $appDevelopSetting) -match $regexConDev
(Get-Content $appSetting) -replace $regexConApp, $replaceCon | Set-Content $appSetting

$regexDbApp = '("Database":\s"database")'
$regexDbDev = '("Database":\s"\w+-\w+")'
$replaceDb = (Get-Content $appDevelopSetting) -match $regexDbDev
(Get-Content $appSetting) -replace $regexDbApp, $replaceDb | Set-Content $appSetting

