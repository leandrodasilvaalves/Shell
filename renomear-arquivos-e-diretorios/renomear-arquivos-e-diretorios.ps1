#referencia
#http://underpop.online.fr/w/windows-power-shell/rename-item-microsoft-windows-powershell.htm

cls
$source = 'E:\miflix.cdn\images'
cd $source

#Renomear arquivos
Get-ChildItem *.* -Recurse | Rename-Item -NewName { $_.Name.ToLower() -replace '\s', '-'}

#Renomear diretorios
Get-ChildItem | Rename-Item -NewName { $_.Name.ToLower() -replace '\s', '-'}
