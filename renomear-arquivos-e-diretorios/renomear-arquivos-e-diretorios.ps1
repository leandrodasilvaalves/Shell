#referencia
#http://underpop.online.fr/w/windows-power-shell/rename-item-microsoft-windows-powershell.htm

cls
$source = 'C:\Files'
cd $source

#Renomear arquivos
Get-ChildItem *.* -Recurse | Rename-Item -NewName { $_.Name -replace '\s', '-'}

#Renomear diretorios
Get-ChildItem | Rename-Item -NewName { $_.Name -replace '\s', '-'}
