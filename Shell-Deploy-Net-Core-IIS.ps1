$env:environment = "production"
$env:project_api_path = "C:\Users\leandro.alves\Documents\Visual Studio 2017\Projects\TesteVariosAmbientes\WebAPI"
$env:inetpub_path = "C:\inetpub\wwwroot\teste-varios-ambientes"

cd $env:project_api_path
dotnet publish -c release -o "$env:project_api_path\bin\$env:environment\netcoreapp2.0\publish\"

Remove-Item "$env:inetpub_path\$env:environment\api\*" -recurse

xcopy /s /y /exclude:C:\exclude.txt "$env:project_api_path\bin\$env:environment\netcoreapp2.0\publish\*.*" "$env:inetpub_path\$env:environment\api\"

echo F|xcopy  "$env:project_api_path\bin\$env:environment\netcoreapp2.0\publish\appsettings.$env:environment.json" "$env:inetpub_path\$env:environment\api\appsettings.json"

#rodar como ADMINISTRADOR