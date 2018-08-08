cls
$appSetting = ".\appsettings.json"
$appDevelopSetting = ".\appsettings.develop.json"

$arrayApp = @('"ConnectionString":\s"connectionstring",', '"Database":\s"database"')
$arrayDev = @('"ConnectionString":\s"\w+:\/\/\w+:\d+",', '"Database":\s"\w+-\w+"')

for ($i=0; $i -lt $arrayApp.length; $i++) {
	$replace = (Get-Content $appDevelopSetting) -match $arrayDev[$i]
    (Get-Content $appSetting) -replace $arrayApp[$i], $replace | Set-Content $appSetting
}