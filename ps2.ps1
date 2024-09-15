$topic = 'flipperdump'
$message = 'This was updated in GitHub.'
$url = 'https://ntfy.sh/' + $topic
try {
    Invoke-RestMethod -Method Post -Uri $url -Body $message
} catch {
    Write-Host 'Failed to send notification: ' + $_
}
