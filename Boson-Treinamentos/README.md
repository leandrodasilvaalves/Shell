# Windows Powershell
*Anotações a partir das vídeo aulas de Powershell no canal [Boson Treinamentos](https://www.youtube.com/playlist?list=PLucm8g_ezqNpdK1sHdiDC3T8VMANcT5WZ)*

## Aula 01
Ferramente de linha de comandos que nos permite automatizar tarefas repetitivas, criar processos, entre outras coisas no windows. 

### Versões do powershell
* v2. Win Xp / 2003 - .Net Framework 2.0/3.5
* v3. Win7 / Server 2008 R2 .Net Framework 4.5;
* v4. Win 2008 R2 /2012/8.1

Obs.: Quando a aula foi gravada só havia até o Windows 8

Para verificar a versão do powershell digite o comando abaixo:
```
$PSVersionTable

Name                           Value
----                           -----
PSVersion                      5.1.16299.666
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.16299.666
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
```
Os comandos do Powershell são chamados de **cmdlet**

### Obter cmdlets do Powershell a partir de comandos legados do cmd

```
Get-Alias cls
```

### Usando ajuda do Powershell

```
help gsv
```

## Aula 02

### Atualizando do Powershell

```
Update-Help

Ex: Get-Help Get-Event -examples
```
Para descobrir nomes de comandos utilize o comando abaixo:
```
help *dir*
```
E o Powershell vai listar todos os comandos que possuem a palavra "**dir**" em seu nome.

Para abrir a ajuda em um tela do windows (interface gráfica) digite o comando abaixo:
```
help dir -ShowWindow
```