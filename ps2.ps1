$topic = 'flipperdump'
$message = 'This machine has been pwnd...'
$url = 'https://ntfy.sh/' + $topic
try {
    Invoke-RestMethod -Method Post -Uri $url -Body $message
} catch {
    Write-Host 'Failed to send notification: ' + $_
}