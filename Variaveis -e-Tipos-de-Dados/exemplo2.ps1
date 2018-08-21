cls

$num1 = 50
$num2 = "90"
$num1 + $num2 #primeira do tipo int e segunda string com numero, ele trata tudo como int
$num2 + $num1 #ocorre o inverso da opção anterior
[int]$num2 + $num1 #neste caso está sendo usado o cast para converter a variável $num2 para int

Write-Host ...................................................
[Double]$num3 = 5.60
[Double]$num4 = 3.80
$num3 + $num4

Write-Host ...................................................
$num3.GetType().Name
$num2.GetType().Name
$num1.GetType().Name

Write-Host ...................................................
$a=5
$b=9
$a, $b = $b, $a #trocar valor das variáveis
$a
$b

Write-Host ...................................................
$num1 | get-member #exibe os metodos do objeto
$num2 | get-member 

Write-Host ...................................................
$path = "\\Server\Share"
$path.StartsWith("\\")
$path.StartsWith("s")

$leandro = "Leandro"
$leandro.insert($leandro.Length, " Alves")

Write-Host ...................................................

$wmi = get-wmiobject -query "SELECT * FROM Win32_PingStatus WHERE Address = '$this'"
$wmi

#Referências
#https://technet.microsoft.com/pt-br/library/2007.03.powershell.aspx