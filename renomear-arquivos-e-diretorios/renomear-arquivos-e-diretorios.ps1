#referencia
#http://underpop.online.fr/w/windows-power-shell/rename-item-microsoft-windows-powershell.htm

cls
$source = 'c:\texto.txt'
cd $source

#Renomear arquivos
Get-ChildItem *.* -Recurse | Rename-Item -NewName { $_.Name.ToLower() -replace '\s', '-'}

#Renomear diretorios
Get-ChildItem | Rename-Item -NewName { $_.Name.ToLower() -replace '\s', '-'}

#Renomear com regex
#Neste caso renomei videos que cujos era semelhante ao abaixo:
#Episodio-Teste-T1E01-episotio-teste
[regex]$rx = "T\d{1}E\d{2}"
Get-ChildItem | Rename-Item -NewName { $rx.Match($_.Name).Value + $_.Name.Substring($_.Name.Length -4)}
