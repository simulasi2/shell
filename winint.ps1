Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "P@ssw0rd" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "1uTirkBjQTOtm7pwu89SXwWq8sw_3Q4ofsdT5rhULVKhB5gJUE" >a.ps1
cmd /c echo ./ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 1.1.1.1 >>a.ps1
.\a.ps1
