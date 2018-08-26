

function Transform-ConnectionString {
    param ([string]$env_appsettings)
        
    $appsettings = ".\appsettings.json"
    $regex = '\"Database\":\s\".+\"'
    
    $content_env_appsettings = (Get-Content $env_appsettings) -match $regex
    $content_env_appsettings = $content_env_appsettings[0].Trim()
    
    (Get-Content $appsettings) -replace $regex, $content_env_appsettings | Set-Content $appsettings
    Get-Content $appsettings
}

$env = "develop"
Transform-ConnectionString -env_appsettings ".\appsettings.$env.json"
#
#$env = "production"
#Transform-ConnectionString -env_appsettings ".\appsettings.$env.json"
#
#$env = "stage"
#Transform-ConnectionString -env_appsettings ".\appsettings.$env.json"