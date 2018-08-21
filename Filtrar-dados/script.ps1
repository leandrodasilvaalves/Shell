#REFERÊNCIA: https://docs.microsoft.com/en-us/powershell/scripting/getting-started/cookbooks/removing-objects-from-the-pipeline--where-object-?view=powershell-6

Get-ChildItem $env:USERPROFILE\desktop | Where-Object -FilterScript {($_.Name -like '*.lnk*')}
