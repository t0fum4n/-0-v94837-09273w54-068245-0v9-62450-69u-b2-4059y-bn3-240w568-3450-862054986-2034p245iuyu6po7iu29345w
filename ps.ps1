$topic = 'flipperdump'
$message = 'This is your notification message.'
$url = 'https://ntfy.sh/' + $topic
try {
    Invoke-RestMethod -Method Post -Uri $url -Body $message
} catch {
    Write-Host 'Failed to send notification: ' + $_
}
