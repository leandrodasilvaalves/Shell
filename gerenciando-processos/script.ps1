Get-Process -name *note* #vai listar todos que atendem o critério

Start-Process texto.txt -WorkingDirectory $env:userprofile\desktop -WindowStyle Normal

Stop-Process -Name notepad

for($i=0; $i -le 5; $i++)
{
     Start-Process notepad -Wait -WindowStyle Normal
}