#REFERÊNCIA: https://docs.microsoft.com/en-us/powershell/scripting/getting-started/cookbooks/removing-objects-from-the-pipeline--where-object-?view=powershell-6

Get-ChildItem $env:USERPROFILE\desktop | Where-Object -FilterScript {($_.Name -like '*.lnk*')}

$processo = Get-Process
$processo | Sort-Object -Property ProcessName
$winArray = $processo | Sort-Object -Property ProcessName | Where-Object -FilterScript {$_.ProcessName -like 'win*'}

Get-ChildItem . -Recurse -Force | Where-Object -FilterScript {($_.LastWriteTime -gt '2018-06-01') -and ($_.Name -like 'Email*.cs')}