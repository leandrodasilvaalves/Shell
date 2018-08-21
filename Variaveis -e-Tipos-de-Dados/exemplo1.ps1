$processos = Get-Process
$processos
echo .
echo .
echo $processos[0]
$processos -is [Array]