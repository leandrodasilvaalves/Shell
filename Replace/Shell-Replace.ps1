$regex = "('asdf'|'jklç'),\s"
$replace = ""
(Get-Content .\texto.txt) -replace $regex, $replace  | Set-Content texto.txt


